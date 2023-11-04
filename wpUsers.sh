#!/bin/bash

#check an argument was given then list out the users if Wordpress install is leaking them
if [ ! -z "$1" ]
then
	curl -s  https://$1/wp-json/wp/v2/users | jq . | grep name | cut -d ":" -f2 | cut -d '"' -f2

else
	echo "Enter a TLD (ex: bellingcat.org) next time buddy!\n(No www, no https, no trailing slash)"
fi
