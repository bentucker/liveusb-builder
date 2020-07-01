install_live() {
	install -d "$KERNELDIR/$KEYWORD/$BITS" "$DATADIR/$KEYWORD"
	cp "${ISO_FILEPATH}" "$DATADIR/$KEYWORD/"
	mount_iso
	cp "$ISOMNT/antiX/vmlinuz" "$ISOMNT/antiX/initrd.gz" \
		"$KERNELDIR/$KEYWORD/$BITS/"
	umount_iso
}
