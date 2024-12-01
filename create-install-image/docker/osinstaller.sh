#!/usr/bin/env bash
c1="n"
c2="n"
c3="n"
echo ""
lsblk
echo ""
echo "Enter Drive path (/dev/sdx): "
echo ""
read d
if [ ! -z "$d" ] && [[ $d == *"/dev/sd"* ]]; then
 s="$(lsblk $d | grep disk)"
 A="$(cut -d' ' -f11 <<< $s)"
 c1="y"
fi
echo ""
echo "List of Drive Files:"
echo ""
ls /diskimages
echo ""
echo "Enter Disk Filename: "
echo ""
read f
if [ ! -z "$f" ]; then
 c2="y"
fi
echo ""
echo "Enter Hostname: "
echo ""
read h
if [ ! -z "$h" ]; then
 c3="y"
fi
echo ""
if [ "$c1" == "y" ] && [ "$c2" == "y" ] && [ "$c3" == "y" ]; then
 dd if=/diskimages/$f status=progress of=$d
 sleep 10
 mount $d"1" /media/drive
 echo "$h" > /media/drive/etc/hostname
 sleep 10
 echo "127.0.0.1 $h" >> /media/drive/etc/hosts
fi
