# many systems now use udev and thus have an empty /dev
# this prevents our chrooted grub install later on, so we copy
# the /dev from our rescue system to the freshly installed system
# 	cp -a /dev /mnt/local/    # /dev/shm (SAP) = file system full
rsync -a --exclude dev/shm/* /dev /mnt/local/
