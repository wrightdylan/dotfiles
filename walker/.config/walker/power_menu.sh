items="Shutdown\nReboot\nLock Screen"
output=$(echo -e $items | walker --dmenu --hidebar)
if [[ "$output" == "Shutdown" ]]; then
    shutdown -h now
elif [[ "$output" == "Reboot" ]]; then
    shutdown -r now
elif [[ "$output" == "Lock Screen" ]]; then
    hyprlock
else
    echo "Please select a command"
fi
