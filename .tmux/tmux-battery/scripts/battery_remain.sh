#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

source "$CURRENT_DIR/helpers.sh"

seconds2time()
{
	T=$1
	D=$((T/60/60/24))
	H=$((T/60/60%24))
	M=$((T/60%60))
	S=$((T%60))
	if [[ ${D} != 0 ]]
	then
		printf '%d days %02d:%02d:%02d' $D $H $M $S
	else
		printf '%02d:%02d:%02d' $H $M $S
	fi
}

battery_discharging() {
	local status="$(battery_status)"
	[[ $status =~ (discharging) ]]
}

pmset_battery_remaining_time() {
	local output="$(pmset -g batt | awk 'NR==2 { gsub(/;/,""); print $4 }')"
	# output has to match format "10:42"
	if [[ "$output" =~ ([[:digit:]]{1,2}:[[:digit:]]{2}) ]]; then
		printf "$output"
	fi
}

print_battery_remain() {
	if command_exists "pmset"; then
		pmset_battery_remaining_time
	elif command_exists "upower"; then
		local battery=$(upower -e | grep battery | head -1)
		local remain_secs=$(\
			dbus-send \
				--print-reply=literal \
				--system \
				--dest=org.freedesktop.UPower \
				$battery \
				org.freedesktop.DBus.Properties.Get string:org.freedesktop.UPower.Device string:TimeToEmpty | awk '{ print $3 }')
		local remaining=$(seconds2time "$remain_secs")

		echo "$remaining"
	elif command_exists "acpi"; then
		acpi -b | grep -Eo "[0-9]+:[0-9]+:[0-9]+"
	fi
}

main() {
	if battery_discharging; then
		print_battery_remain
	fi
}
main
