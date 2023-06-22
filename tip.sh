#!/bin/bash

sys_detail_file="sys_detail.txt"

#ssh user@de.subisu.net.np <<EOF

os_version=$(uname -a)
echo "OS Version: $os_version"

ip_address=$(hostname -f)
echo "Current IP Address: $ip_address"

logged_in_users=$(who)
echo "Current Logged-in Users: $logged_in_users"

uptime=$(uptime)
echo "System Uptime: $uptime"
echo"OS Version: $os_version
Current IP Address: $ip_address
Current Logged-in Users: $logged_in_users
System Uptime: $uptime">$sys_detail_file


