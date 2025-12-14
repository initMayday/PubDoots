echo -e "\nDeleting Existing Entries \n"

sudo efibootmgr -b 0000 -B --quiet
sudo efibootmgr -b 0001 -B --quiet
sudo efibootmgr -b 0002 -B --quiet
sudo efibootmgr -b 0003 -B --quiet
sudo efibootmgr -b 0004 -B --quiet
sudo efibootmgr -b 0005 -B --quiet
sudo efibootmgr -b 0006 -B --quiet
sudo efibootmgr -b 0007 -B --quiet

echo -e "\nMaking Grub Backup\n"

#> Make backup grub config
sudo grub-install --target=x86_64-efi --efi-directory=/boot --bootloader-id=GRUB
sudo grub-mkconfig -o /boot/grub/grub.cfg

echo -e "\nCreating EFI Stub \n"

sudo /usr/lib/booster/regenerate_images
sudo efibootmgr --create \
	--disk /dev/nvme0n1 --part 1 \
	--label "Arch Linux Stub" \
	--loader /vmlinuz-linux \
	--unicode "\initrd=booster-linux.img quiet rd.luks.name=dff5fe43-8df2-4ae8-9a93-57049b6e7e11=decryptdevice root=/dev/mapper/decryptdevice resume=/dev/mapper/decryptdevice resume_offset=42424320" 
# resume=/dev/mapper/decryptdevice resume_offset=42424320

echo -e "\nFinal Result:\n"

sudo efibootmgr

