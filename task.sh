#!/bin/bash
echo "------------------------------------"
hostnamectl | grep "Operating System"
echo "------------------------------------"
echo "Users with bash shell installed: "
cat /etc/passwd | grep bash | awk -F: '{print $1}'
echo "------------------------------------"
echo "Open ports: "
netstat -tuln | awk '/^tcp/ {print $4}' | awk -F: '{print $NF}' | sort -u
echo "------------------------------------"