#!/usr/bin/env bash

## Author  : Aditya Shakya
## Mail    : adi1090x@gmail.com
## Github  : @adi1090x
## Twitter : @adi1090x

DIR="$HOME/.config/polybar/panels/menu"
uptime=$(uptime -p | sed -e 's/up //g')

theme="elementary_dark"

rofi_command="rofi -theme $DIR/$theme/powermenu.rasi"

# Options
shutdown=" Shutdown"
reboot=" Restart"
lock=" Lock"
logout=" Logout"

# Confirmation
confirm_exit() {
	rofi -dmenu\
		-i\
		-no-fixed-num-lines\
		-p "Are You Sure? : "\
		-theme $DIR/$theme/confirm.rasi
}

# Variable passed to rofi
options="$lock\n$logout\n$reboot\n$shutdown"

chosen="$(echo -e "$options" | $rofi_command -p "Uptime: $uptime" -dmenu -selected-row 0)"
case $chosen in
    $shutdown)
		systemctl poweroff
        ;;
    $reboot)
		systemctl reboot
        ;;
    $lock)
		i3lock
        ;;
    $logout)
		i3-msg exit
        ;;
esac
