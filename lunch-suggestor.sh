#!/bin/bash

SCRIPTDIR="`dirname $0`"
IFS=$'\n' read -d '' -r -a hospody < "`dirname $0`/restaurants.txt"

RANDOM=$$$(date +%s)

vybranahospoda=${hospody[$RANDOM % ${#hospody[@]} ]}

echo Je čas na oběd, Zahoďte lopaty a běžte se nasvačit do $vybranahospoda.
