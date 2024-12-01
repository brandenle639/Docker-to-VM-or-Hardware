#!/usr/bin/env bash
dockimg={Docker Image}
rawimg={Image File}.raw
discsize={Disk Size}
pass={Password}
cd docker
docker build -t {Image Name}:{Version} .
cd ..
sudo d2vm convert $dockimg -o $rawimg -s $discsize -p $pass
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
echo "Enter Hostname: "
echo ""
read h
if [ ! -z "$h" ]; then
 c2="y"
fi
echo ""
if [ "$c1" == "y" ] && [ "$c2" == "y" ]; then
 sudo dd if=$rawimg status=progress of=$d
 sleep 10
 sudo mount $d"1" /media/drive
 sudo echo "$h" > /media/drive/etc/hostname
 sleep 10
 sudo echo "127.0.0.1 $h" >> /media/drive/etc/hosts
fi
