INCLUDE "hardware.inc"

SECTION "Header", ROM0[$100] ; gameboy starts running at memory location 100

EntryPoint:
    nop
    jp Start

REPT $150 - $104
    db 0
ENDR

SECTION "Game code", ROM0

Start:
 ; Copy the sprite data into VRAM
 ld hl, $9000 + 16
 ld de, smiley_sprite
 ld b, 16
 
copy_loop:
  ld a, [de]
  inc de
  ld [hl+], a
  dec b
  jp nz, copy_loop
   
 ; Set the first byte of the background tile map
 ld hl, $9800
 ld [hl], 1
 
 ; Set the background palette
 ld hl, $ff47
 ld [hl], %11100100
 
 ; Set LCDC to turn on the display
 ld hl, $ff40
 ld [hl], %10000001
 
 ; Stop execution
.end 
    jp .end

smiley_sprite: db $00, $00, $00, $00, $24, $24, $00, $00, $81, $81, $7e, $7e, $00, $00, $00, $00