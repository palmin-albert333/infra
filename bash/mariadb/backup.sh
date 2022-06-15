#!/bin/bash
mariabackup --backup \
   --target-dir=/home/albert/backup/db_backup_$(date +%Y-%m-%d-%H-%M)/ \
   --user=zabbix --password=15426378aa

#UPDATE mysql.user SET Grant_priv = 'Y', Super_priv = 'Y' WHERE User = 'zabbix';
