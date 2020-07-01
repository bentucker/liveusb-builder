install_live() {
	install -d "$KERNELDIR/kali/64" "$DATADIR/kali"
	cp "${ISO_FILEPATH}" "$DATADIR/kali/"
	mount_iso
	cp "$ISOMNT/live/vmlinuz" "$ISOMNT/live/initrd.img" "$KERNELDIR/kali/64/"
	umount_iso
}

