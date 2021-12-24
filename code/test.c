#include <avr/io.h>

void wait(long cycles) { for(volatile long t = 0; t < cycles; t++); }

void out(int port, int pin) { if(port == 0) DDRA |= (1 << pin); else DDRB |= (1 << pin); }
void inp(int port, int pin) { if(port == 0) DDRA &= ~(1 << pin); else DDRB &= ~(1 << pin); }

void set(int port, int pin) { if(port == 0) PORTA |= (1 << pin); else PORTB |= (1 << pin); }
void clr(int port, int pin) { if(port == 0) PORTA &= ~(1 << pin); else PORTB &= ~(1 << pin); }

int get(int port, int pin) { return (port==0 ? PINA : PINB) & (1 << pin); }

void die(int num) {
	out(0, 3);
	while(1) {
		for(int i = 0; i < num; i++) {
			set(0, 3);
			wait(40000);
			clr(0, 3);
			wait(40000);
		}
		wait(80000);
	}
}

void open(int port, int scl, int sda) {
	out(port, sda);
	out(port, scl);
}
void reopen(int port, int scl, int sda) {
	inp(port, scl);
	out(port, sda);
	out(port, scl);
}
void close(int port, int scl, int sda) {
	inp(port, sda);
	inp(port, scl);
	out(port, sda);
	inp(port, sda);
}

void ackOrDie(int port, int scl, int sda, int errCode) {
	inp(port, sda);
	inp(port, scl);
	//if(get(port, sda)) die(errCode);
	out(port, scl);
}

void bits(int port, int scl, int sda, int bitc, int bitv) {
	for(int i = bitc-1; i >= 0; i--) {
		if(bitv & (1 << i)) {
			inp(port, sda);
		} else {
			out(port, sda);
		}
		inp(port, scl); out(port, scl);
	}
}

void cmdAnd(int port, int scl, int sda, int addr, int command) {
	open(port, scl, sda);

	// address
	bits(port, scl, sda, 7, addr);
	bits(port, scl, sda, 1, 0);
	ackOrDie(port, scl, sda, 1);

	// command
	out(port, sda);
	bits(port, scl, sda, 8, command);
	ackOrDie(port, scl, sda, 2);
}
void cmd(int port, int scl, int sda, int addr, int command) {
	cmdAnd(port, scl, sda, addr, command);
	close(port, scl, sda);
}
void write(int port, int scl, int sda, int addr, int reg, int val) {
	open(port, scl, sda);

	// address
	bits(port, scl, sda, 7, addr);
	bits(port, scl, sda, 1, 0);
	ackOrDie(port, scl, sda, 1);

	// register
	out(port, sda);
	bits(port, scl, sda, 8, reg);
	ackOrDie(port, scl, sda, 2);

	// value
	out(port, sda);
	bits(port, scl, sda, 8, val);
	ackOrDie(port, scl, sda, 3);

	close(port, scl, sda);
}

int read(int port, int scl, int sda, int addr, int ptr) {
	// write pointer
	cmdAnd(port, scl, sda, addr, ptr);

	// begin reading
	reopen(port, scl, sda);

	// address
	bits(port, scl, sda, 7, addr);
	bits(port, scl, sda, 1, 1); // read
	ackOrDie(port, scl, sda, 3);

	// read bits
	int res = 0;
	for(int b = 0; b < 8; b++) {
		res <<= 1;
		inp(port, scl);
		if(get(port, sda)) res |= 1;
		out(port, scl);
	}

	// not acknowledge
	inp(port, sda);
	inp(port, scl);
	out(port, scl);

	close(port, scl, sda);

	return res;
}

int main() {

	DDRA = 0;
	DDRB = 0;

	wait(30000);

	//setRegA(0, 1, 0x70, 0x20, 0x21);
	//setRegA(0, 1, 0x70, 0x80, 0x87);
	cmd(0,0,1, 0x70, 0x21); // init
	cmd(0,0,1, 0x70, 0x81); // blink
	cmd(0,0,1, 0x70, 0xE0); // dim
	write(0,0,1, 0x70, 0x00, 0xAA); // write from first byte
	write(0,0,1, 0x70, 0x02, 0x55);
	write(0,0,1, 0x70, 0x04, 0xAA);
	write(0,0,1, 0x70, 0x06, 0x55);
	write(0,0,1, 0x70, 0x08, 0xAA);
	write(0,0,1, 0x70, 0x0A, 0x55);
	write(0,0,1, 0x70, 0x0C, 0xAA);
	write(0,0,1, 0x70, 0x0E, 0x55);

	write(1,0,1, 0x68, 0x00, 0x00);
	write(1,0,1, 0x68, 0x07, 0x90);

	wait(100000);
	while(1) {
		write(0,0,1, 0x70, 0x00, read(1,0,1, 0x68, 0x00));
		write(0,0,1, 0x70, 0x02, read(1,0,1, 0x68, 0x01));
		write(0,0,1, 0x70, 0x04, read(1,0,1, 0x68, 0x02));
		write(0,0,1, 0x70, 0x06, read(1,0,1, 0x68, 0x03));
		write(0,0,1, 0x70, 0x08, read(1,0,1, 0x68, 0x04));
		write(0,0,1, 0x70, 0x0a, read(1,0,1, 0x68, 0x05));
		write(0,0,1, 0x70, 0x0c, read(1,0,1, 0x68, 0x06));
		write(0,0,1, 0x70, 0x0e, read(1,0,1, 0x68, 0x07));
	}
}
