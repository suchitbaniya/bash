#!/bin/bash

remote_host="de.subisu.net.np"
username="user"
password="D!gn!Ty#$&!sC"

# Connect remote machine
ssh_output=$(ssh -o PasswordAuthentication=yes -o PubkeyAuthentication=no -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -o PreferredAuthentications=password "$username@$remote_host" "ssh -V")
ssh_version=$(echo "$ssh_output" | awk '{print $1}')

# Print SSH v
echo  "SSH Version: $ssh_version"
