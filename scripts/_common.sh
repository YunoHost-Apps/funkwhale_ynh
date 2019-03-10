#!/bin/bash

# funkwhale needs edits to the domain config file
# this function removes funkwhale specifics
funkwhale_nginx_domain_cleaning() {
	local line
	local tempFile
	local nginxConf

	nginxConf="/etc/nginx/conf.d/$domain.conf"
	tempFile="$nginxConf.temp"

	line=$(sed -n '/server /=' "$nginxConf" | head -n 1)

	tail -n +"$line" "$nginxConf" > "$tempFile"
	mv "$tempFile" "$nginxConf"
}

# funkwhale needs edits to the domain config file
# this function adds funkwhale specifics
funkwhale_nginx_domain_configure() {
	local tempFile
	local nginxConf

	nginxConf="/etc/nginx/conf.d/$domain.conf"
	tempFile="$nginxConf.temp"

	echo "
# required for websocket support
map \$http_upgrade \$connection_upgrade {
    default upgrade;
    ''      close;
}
" | cat - "$nginxConf" > "$tempFile"
	mv "$tempFile" "$nginxConf"
}

#=================================================
#
# Redis HELPERS
#
# Point of contact : Jean-Baptiste Holcroft <jean-baptiste@holcroft.fr>
#=================================================

# get the first available redis database
#
# usage: ynh_redis_get_free_db
# | returns: the database number to use
ynh_redis_get_free_db() {
	local result max db
	result=$(redis-cli INFO keyspace)

	# get the num
	max=$(cat /etc/redis/redis.conf | grep ^databases | grep -Eow "[0-9]+")

	db=0
	# default Debian setting is 15 databases
	for i in $(seq 0 "$max")
	do
	 	if ! echo "$result" | grep -q "db$i"
	 	then
			db=$i
	 		break 1
 		fi
 		db=-1
	done

	test "$db" -eq -1 && ynh_die "No available Redis databases..."

	echo "$db"
}

# Create a master password and set up global settings
# Please always call this script in install and restore scripts
#
# usage: ynh_redis_remove_db database
# | arg: database - the database to erase
ynh_redis_remove_db() {
	local db=$1
	redis-cli -n "$db" flushall
}

# Send an email to inform the administrator
#
# usage: ynh_send_readme_to_admin app_message [recipients]
# | arg: app_message - The message to send to the administrator.
# | arg: recipients - The recipients of this email. Use spaces to separate multiples recipients. - default: root
#	example: "root admin@domain"
#	If you give the name of a YunoHost user, ynh_send_readme_to_admin will find its email adress for you
#	example: "root admin@domain user1 user2"
ynh_send_readme_to_admin() {
	local app_message="${1:-...No specific information...}"
	local recipients="${2:-root}"

	# Retrieve the email of users
	find_mails () {
		local list_mails="$1"
		local mail
		local recipients=" "
		# Read each mail in argument
		for mail in $list_mails
		do
			# Keep root or a real email address as it is
			if [ "$mail" = "root" ] || echo "$mail" | grep --quiet "@"
			then
				recipients="$recipients $mail"
			else
				# But replace an user name without a domain after by its email
				if mail=$(ynh_user_get_info "$mail" "mail" 2> /dev/null)
				then
					recipients="$recipients $mail"
				fi
			fi
		done
		echo "$recipients"
	}
	recipients=$(find_mails "$recipients")

	local mail_subject="☁️🆈🅽🅷☁️: \`$app\` was just installed!"

	local mail_message="This is an automated message from your beloved YunoHost server.

Specific information for the application $app.

$app_message

---
Automatic diagnosis data from YunoHost

$(yunohost tools diagnosis | grep -B 100 "services:" | sed '/services:/d')"

	# Define binary to use for mail command
	if [ -e /usr/bin/bsd-mailx ]
	then
		local mail_bin=/usr/bin/bsd-mailx
	else
		local mail_bin=/usr/bin/mail.mailutils
	fi

	# Send the email to the recipients
	echo "$mail_message" | $mail_bin -a "Content-Type: text/plain; charset=UTF-8" -s "$mail_subject" "$recipients"
}

#=================================================
# fail2ban helpers
# taken from https://github.com/YunoHost-Apps/shaarli_ynh
#=================================================

# Create a dedicated fail2ban config (jail and filter conf files)
#
# usage: ynh_add_fail2ban_config log_file filter [max_retry [ports]]
# | arg: log_file - Log file to be checked by fail2ban
# | arg: failregex - Failregex to be looked for by fail2ban
# | arg: max_retry - Maximum number of retries allowed before banning IP address - default: 3
# | arg: ports - Ports blocked for a banned IP address - default: http,https
ynh_add_fail2ban_config () {
	local logpath
	local failregex
	local max_retry
	local ports

	logpath=$1
	failregex=$2
	max_retry=${3:-3}
	ports=${4:-http,https}

	test -n "$logpath" || ynh_die "ynh_add_fail2ban_config expects a logfile path as first argument and received nothing."
	test -n "$failregex" || ynh_die "ynh_add_fail2ban_config expects a failure regex as second argument and received nothing."

	finalfail2banjailconf="/etc/fail2ban/jail.d/$app.conf"
	finalfail2banfilterconf="/etc/fail2ban/filter.d/$app.conf"
	ynh_backup_if_checksum_is_different "$finalfail2banjailconf" 1
	ynh_backup_if_checksum_is_different "$finalfail2banfilterconf" 1

	sudo tee "$finalfail2banjailconf" <<EOF
[$app]
enabled = true
port = $ports
filter = $app
logpath = $logpath
maxretry = $max_retry
EOF

	sudo tee "$finalfail2banfilterconf" <<EOF
[INCLUDES]
before = common.conf
[Definition]
failregex = $failregex
ignoreregex =
EOF

	ynh_store_file_checksum "$finalfail2banjailconf"
	ynh_store_file_checksum "$finalfail2banfilterconf"

	systemctl restart fail2ban
	local fail2ban_error="$(journalctl -u fail2ban | tail -n50 | grep "WARNING.*$app.*")"
	if [ -n "$fail2ban_error" ]
	then
		echo "[ERR] Fail2ban failed to load the jail for $app" >&2
		echo "WARNING${fail2ban_error#*WARNING}" >&2
	fi
}

# Remove the dedicated fail2ban config (jail and filter conf files)
#
# usage: ynh_remove_fail2ban_config
ynh_remove_fail2ban_config () {
	ynh_secure_remove "/etc/fail2ban/jail.d/$app.conf"
	ynh_secure_remove "/etc/fail2ban/filter.d/$app.conf"
	systemctl reload fail2ban
}