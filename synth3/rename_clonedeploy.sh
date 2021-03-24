#!/bin/bash
mkdir -p /mnt/fs
mount /dev/sda1 /mnt/fs
echo $computer_name > /mnt/fs/etc/hostname
# sed -i "s/^127.0.1.1\s.*127.0.1.1 \
#         $computer_name $computer_name.iutcv.fr" \
sed -i "s/^127.0.1.1\s.*127.0.1.1 $computer_name $computer_name.iutcv.fr" \

                /mnt/fs/etc/hosts

umount /mnt/fs