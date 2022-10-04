#!/bin/bash

#=================================================
# COMMON VARIABLES
#=================================================

# dependencies used by the app (must be on a single line)
pkg_dependencies="curl python3-pip python3-venv git unzip libldap2-dev libsasl2-dev gettext-base zlib1g-dev libffi-dev libssl-dev \
	build-essential ffmpeg libjpeg-dev libmagic-dev libpq-dev postgresql postgresql-contrib python3-dev make \
	redis-server \
	`# add arm support` \
	zlib1g-dev libffi-dev libssl-dev"

#=================================================
# PERSONAL HELPERS
#=================================================

#=================================================
# EXPERIMENTAL HELPERS
#=================================================

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

	test "$db" -eq -1 && ynh_die --message="No available Redis databases..."

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
