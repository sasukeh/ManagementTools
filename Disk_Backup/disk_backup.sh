#!/bin/sh
#
#
#
#
#

id | grep root >/dev/null
if [ $? -ne 0 ]; then
  echo "you should execute this script as a root."
  exit 1
fi

# target disks
TDISK=/data
BDISK=/data2

# existance check of disks
df | grep $TDISK > /dev/null
if [ "$?" -eq 1 ] ; then
 echo "target disk is not exist"
 exit 1
fi
df | grep $TDISK > /dev/null
if [ "$?" -eq 1 ] ; then
 echo "backup disk is not exist"
 exit 1
fi

rsync -av --delete $TDISK/ $BDISK




