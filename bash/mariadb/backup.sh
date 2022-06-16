#!/bin/bash
mariabackup --backup \
   --target-dir=/home/albert/backup/db_backup_$(date +%Y-%m-%d-%H-%M)/ \
   --user=zabbix --password=15426378aa
