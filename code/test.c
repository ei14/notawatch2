#include <avr/io.h>
#include <avr/sleep.h>
#include <avr/interrupt.h>

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

void clrCol(int col) { // clear an LED column
	write(0,0,1, 0x70, 2*col, 0x00);
}

// LED patterns for each digit
const char digCol2[] = { 0b011, 0b111, 0b110, 0b111, 0b111, 0b011, 0b011, 0b111, 0b111, 0b111 };
const char digCol1[] = { 0b011, 0b000, 0b011, 0b101, 0b010, 0b110, 0b111, 0b100, 0b111, 0b110 };
void twoDigit(int col, int a, int b) {
	write(0,0,1, 0x70, 2*col, (digCol1[a] << 4) | (digCol1[b] >> 1) | (digCol1[b] << 7));
	write(0,0,1, 0x70, 2*(col + 1), (digCol2[a] << 4) | (digCol2[b] >> 1) | (digCol2[b] << 7));
}

void turnOff() {
	for(int c = 0; c < 8; c++) {
		clrCol(c); // clear screen
	}
	SREG |= 0x80; // enable interrupts
	GIMSK |= 0x40; // enable INT0 interrupt
	MCUCR &= ~0x03; // interrupt on level low
	//MCUCR |= 0x30; // sleep enable and enter power-down mode
	sleep_enable();
	sei();
	sleep_cpu();
}

int buf;
void time() {
	for(int t = 0; t < 1000; t++) {
		buf = read(1,0,1, 0x68, 0x02); // hour
		twoDigit(0, buf >> 4, buf & 0b1111);
		clrCol(2);
		buf = read(1,0,1, 0x68, 0x01); // minute
		twoDigit(3, buf >> 4, buf & 0b1111);
		clrCol(5);
		buf = read(1,0,1, 0x68, 0x00); // second
		twoDigit(6, buf >> 4, buf & 0b1111);
	}
	if(!get(1, 2)) {
		time();
	} else {
		turnOff();
	}
}

ISR(INT0_vect) {
	GIMSK &= ~0x40; // disable INT0 interrupt
	SREG &= ~0x80; // disable interrupts
	time();
}

int main() {
	DDRA = 0;
	DDRB = 0;

	wait(30000);

	if(read(1,0,1, 0x68, 0x00) == 0x80) {
		cmd(0,0,1, 0x70, 0x21); // init screen
		cmd(0,0,1, 0x70, 0x81); // no blink
		cmd(0,0,1, 0x70, 0xE0); // dim

		write(1,0,1, 0x68, 0x00, 0x00); // enable DS1307
		write(1,0,1, 0x68, 0x07, 0x90); // disable buzzer
	}

	time();
}
