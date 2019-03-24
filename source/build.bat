@echo off

set rom="goron.gb"
if exist %rom% del %rom%
if exist main.o del main.o

:begin
echo assembling...
	rgbasm -o main.o main.asm
	if errorlevel 1 goto end
echo linking...
	rgblink -o %rom% main.o
	if errorlevel 1 goto end
echo fixing...
	rgbfix -v -p 0 %rom%
	del main.o

:end
	del main.o