OUTPUT_ARCH(arm)

MEMORY
{
	RAMRX (rx) : ORIGIN = 0x00A33000, LENGTH = 0x00003000
}

SECTIONS
{
	.text : ALIGN(0x100) {
		build/crt0.o(.init)
		*(.text)
		*(.rodata)
		_got_start = .;
		*(.got)
		*(.got.plt)
		*(.data.rel.ro.local)
		_got_end = .;
	}
}

