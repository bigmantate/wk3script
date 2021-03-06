
#!/bin/bash
#week 3 script 3

#Redirecting standard output to a file, this file is disregarded by kernel 
echo "into the abyss" > /dev/null

#Using the dd program to copy data in blocks in a fixed size for a file, filez
dd if=/dev/zero of=filez bs=1024 count=1

ls -l

#Using the lssci tool to list SCSI devices and device paths and send output into new file
#If not installed run sudo apt-get install lsscsi
lsscsi > devinfo.txt

#Using the cat command to output what was written into devinfo.txt with lsscsi command
cat devinfo.txt

#Using the tool udevadm to explore system devices for examination
udevadm info --query=all --name=/dev/sda
 
