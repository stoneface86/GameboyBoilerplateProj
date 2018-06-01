include "./src/Home/Joypad.inc"
include "./src/Setup/Hardware.inc"

section "JoypadMngmt", rom0

ReadJoypad::
	; Read all joypad buttons
	joypad_columns

	ld b, a ; Backup

	; Save joypad buttons both down and up into memory
	joypad_save

	; Reset joypad
	joypad_reset
	ret
