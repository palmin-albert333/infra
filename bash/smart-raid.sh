#!/bin/bash
/opt/adaptec/arcconf RESCAN 1
if /opt/adaptec/arcconf GETSMARTSTATS 1 TABULAR | grep Passed;
then
  echo "SMART is GOOD!"
else
  curl -s "https://api.telegram.org/bot<my_token>/sendMessage?chat_id=-1001612626954&text=Proxmox2%20SMART%20is%20BAD!"
fi

if /opt/adaptec/arcconf GETCONFIG 1 AL | grep Temperature | grep Normal;
then
  echo "Temperature RAID controller is GOOD!"
else
  curl -s "https://api.telegram.org/bot<my_token>/sendMessage?chat_id=-1001612626954&text=Proxmox2%20Temperature%20RAID%20controller%20is%20BAD!"
fi
