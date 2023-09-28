#!/bin/sh

for n in calibration eeprom efuse flash hfuse lfuse lock signature; do
	avrdude -c usbasp -p m644pa -n -U ${n}:r:${n}.bin:r -U ${n}:r:${n}.i:i
done;
