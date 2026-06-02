#!/bin/bash

<< comment
this script is for creating backups
comment

function display_usage {
    echo "Usage: ./backup.sh <source_path> <backup_path>"
}

if [ $# -eq 0 ]; then
    display_usage
    exit 1
fi

source_dir=$1
time_stamp=$(date '+%Y-%m-%d-%H-%M-%S')
backup_dir=$2

function create_backup {
    zip -r "${backup_dir}/backup_${time_stamp}.zip" "${source_dir}" > /dev/null

    if [ $? -eq 0 ]; then
        echo "Backup generated successfully at ${time_stamp}"
    else
        echo "Backup failed"
    fi
}

function perform_rotation{
        backups=($(ls -t "${backupdir}/backup_"*.zip 2>/dev/null))

        if[ "${#backups[@]}" -gt 5 ]; then
                echo "performing roatation for 5 days"

                backups_to_remove=("$backups[@]:5")
                echo "${backups_to_remove[@]}"

                for backup in "${backup_to_remove}}
                do
                        rm -f ${backup}
        fi
}
create_backup
perform_rotation
