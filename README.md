# Dot Matrix Goron

An attempt to learn Gameboy assembly. The code name for the Gameboy was DMG (Dot Matrix Game).

# Build

## Prerequisites

Gameboy build pipeline, [RGBDS](https://github.com/rednex/rgbds/releases).

## Building the rom
Clone the repo and open a terminal in the source directory and run the following commands:
* `rgbasm -o main.o main.asm`
* `rgblink -o goron.gb main.o`
* `rgbfix -v -p 0 goron.gb`
