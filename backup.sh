#!/bin/bash

<< help
This is a a shell script to take backups can also be used with cron

help
source_dir="/home/ubuntu/devops-zero-hero/scripts"
destionation_dir="/home/ubuntu/devops-zero-hero/backups"

function create_backup {
	timestamp=$(date '+%Y-%m-%d-%H-%M-%S')

	backup_dir="${destination_url}/backup_${timestamp}"

	zip -r "{backup_dir}.zip" "$source_dir"

	echo "Backup completed"
}
create_backup "$source_dir $destination_dir

