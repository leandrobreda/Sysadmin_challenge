#!/bin/bash

for host in $(cat myservers_list.txt)
do
	 DATE=$(ssh $host "date '+%T %D'")
	 HOSTNAME=$(ssh $host "hostname")
	 OS_VERSION=$(ssh $host "cat /etc/redhat-release")

	    echo $DATE" "$HOSTNAME" "$host" "$OS_VERSION >> servers_version.txt
done
