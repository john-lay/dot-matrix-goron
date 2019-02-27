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