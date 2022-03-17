#!/bin/bash
/opt/adaptec/arcconf RESCAN 1
if /opt/adaptec/arcconf GETSMARTSTATS 1 TABULAR | grep Passed;
then
  echo "SMART is GOOD!"
else
  curl -s "https://api.telegram.org/bot2023332846:AAGwBcjFHxeRsMdKhZ1FqVDeROBxU17w4KA/sendMessage?chat_id=-1001612626954&text=Proxmox2%20SMART%20is%20BAD!"
fi

if /opt/adaptec/arcconf GETCONFIG 1 AL | grep Temperature | grep Normal;
then
  echo "Temperature RAID controller is GOOD!"
else
  curl -s "https://api.telegram.org/bot2023332846:AAGwBcjFHxeRsMdKhZ1FqVDeROBxU17w4KA/sendMessage?chat_id=-1001612626954&text=Proxmox2%20Temperature%20RAID%20controller%20is%20BAD!"
fi
