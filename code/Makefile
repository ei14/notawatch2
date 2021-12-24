main: test.c
	avr-gcc -O0 -DF_CPU=2500000 -mmcu=attiny84a test.c -o test.elf
	rm -f test.hex
	avr-objcopy -j .text -j .data -O ihex test.elf test.hex
	avr-size --format=avr --mcu=attiny84a test.elf

run:
	sudo avrdude -c usbtiny -p attiny84 -U flash:w:test.hex:i
