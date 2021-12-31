#include <avr/io.h>
#include <avr/sleep.h>
#include <avr/interrupt.h>

void wait(long cycles) { for(volatile long t = 0; t < cycles; t++); }

void out(int port, int pin) { if(port == 0) DDRA |= (1 << pin); else DDRB |= (1 << pin); }
void inp(int port, int pin) { if(port == 0) DDRA &= ~(1 << pin); else DDRB &= ~(1 << pin); }

void set(int port, int pin) { if(port == 0) PORTA |= (1 << pin); else PORTB |= (1 << pin); }
void clr(int port, int pin) { if(port == 0) PORTA &= ~(1 << pin); else PORTB &= ~(1 << pin); }

int get(int port, int pin) { return (port==0 ? PINA : PINB) & (1 << pin); }

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

void getAck(int port, int scl, int sda) {
	inp(port, sda);
	inp(port, scl);
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
	getAck(port, scl, sda);

	// command
	out(port, sda);
	bits(port, scl, sda, 8, command);
	getAck(port, scl, sda);
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
	getAck(port, scl, sda);

	// register
	out(port, sda);
	bits(port, scl, sda, 8, reg);
	getAck(port, scl, sda);

	// value
	out(port, sda);
	bits(port, scl, sda, 8, val);
	getAck(port, scl, sda);

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
	getAck(port, scl, sda);

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
void drawCursor(int col) { // clear column; put two dots in the middle
	write(0,0,1, 0x70, 2*col, 0x0c);
}

// LED patterns for each digit
const volatile char digCol2[] = { 0b011, 0b111, 0b110, 0b111, 0b111, 0b011, 0b011, 0b111, 0b111, 0b111, 0b000 };
const volatile char digCol1[] = { 0b011, 0b000, 0b011, 0b101, 0b010, 0b110, 0b111, 0b100, 0b111, 0b110, 0b000 };
void twoDigit(int col, int a, int b) {
	write(0,0,1, 0x70, 2*col, (digCol1[a] << 4) | (digCol1[b] >> 1) | (digCol1[b] << 7));
	write(0,0,1, 0x70, 2*(col + 1), (digCol2[a] << 4) | (digCol2[b] >> 1) | (digCol2[b] << 7));
}
void twoDigitBuf(int col, int buf) {
	twoDigit(col, buf >> 4, buf & 0xf);
}
void oneOrTwoDigit(int col, int a, int b) {
	if(a == 0) {
		twoDigit(col, 10, b); // omit leading 0
	} else {
		twoDigit(col, a, b); // regular twoDigit
	}
}
void oneOrTwoDigitBuf(int col, int buf) {
	oneOrTwoDigit(col, buf >> 4, buf & 0xf);
}

int heldA() { return !get(0, 7); }
int heldB() { return !get(1, 2); }
int heldC() { return !get(0, 2); }
int heldD() { return !get(0, 3); }

void turnOff() {
	for(int c = 0; c < 8; c++) {
		clrCol(c); // clear screen
	}

	MCUSR &= 0xf7; // clear watchdog reset flag
	WDTCSR |= 0x40; // WDIE (watchdog interrupt enable)

	WDTCSR |= 0x18; // set WDE and WDCE
	WDTCSR |= 0x2f; // set WDE and WDP bits to 8 seconds; clear WDCE

	sei();
	sleep_enable();
	sleep_cpu();
}

void time();
void date();
void timeSet();

void time(int offAfter) {
	// turn off watchdog
	MCUSR &= 0xf7; // clear watchdog reset flag
	WDTCSR |= 0x18; // set WDE and WDCE
	WDTCSR = 0x00; // turn off WDT

	// display time
	clrCol(2);
	clrCol(5);
	do {
		for(int t = 0; t < 32; t++) {
			twoDigitBuf(0, read(1,0,1, 0x68, 0x02)); // hour
			twoDigitBuf(3, read(1,0,1, 0x68, 0x01)); // minute
			twoDigitBuf(6, read(1,0,1, 0x68, 0x00)); // second

			if(heldA()) {
				if(heldB()) {
					timeSet();
				} else {
					date();
				}
			}

			wait(40000);
		}
	} while(heldB());

	if(offAfter) {
		turnOff();
	} else {
		for(int c = 0; c < 8; c++) {
			clrCol(c); // clear screen
		}
	}

}
void date() {
	clrCol(2);
	clrCol(5);
	while(heldA()) {
		oneOrTwoDigitBuf(0, read(1,0,1, 0x68, 0x03)); // day of week
		oneOrTwoDigitBuf(3, read(1,0,1, 0x68, 0x05)); // month
		oneOrTwoDigitBuf(6, read(1,0,1, 0x68, 0x04)); // date

		if(heldB()) {
			timeSet();
		}

		wait(40000);
	};
	time(1);
}

void incDecAB(int *target, int min, int max) { // acts according to A and B buttons
	if(heldA()) {
		if(*target == min) { // MIN
			*target = max;
		} else if((*target & 0xf) == 0) { // X0
			*target += 0x09 - 0x10;
		} else { // XX
			(*target)--;
		}
	} else {
		if(*target == max) { // MAX
			*target = min;
		} else if((*target & 0xf) == 0x9) { // X9
			*target += 0x10 - 0x9;
		} else { // XX
			(*target)++;
		}
	}
}
void timeSet() {
	// SET TIME
	write(1,0,1, 0x68, 0x07, 0x11); // enable buzzer
	while(heldA() && heldB()); // A and B got us here; now wait to let go
	write(1,0,1, 0x68, 0x07, 0x90); // disable buzzer

	int hh = read(1,0,1, 0x68, 0x02);
	int mm = read(1,0,1, 0x68, 0x01);
	int ss;
	int cursor = 0;

	clrCol(3);
	clrCol(4);

	while(!(heldC() && heldD())) {
		twoDigitBuf(1, hh); // hour
		twoDigitBuf(5, mm); // minute

		// draw cursor as two centered dots on left or right
		if(cursor == 0) {
			drawCursor(0);
			clrCol(7);
		} else {
			clrCol(0);
			drawCursor(7);
		}

		wait(40000);

		if(heldA() || heldB()) {
			if(cursor == 0) {
				incDecAB(&hh, 0x00, 0x23); // adjust hour
			} else {
				incDecAB(&mm, 0x00, 0x59); // adjust minute
			}

		}

		if(heldC() || heldD()) {
			cursor = 1 - cursor;
		}
	}

	write(1,0,1, 0x68, 0x02, hh); // write hour
	write(1,0,1, 0x68, 0x01, mm); // write minute
	write(1,0,1, 0x68, 0x00, 0); // write second (always write 0)

	// SET DATE
	write(1,0,1, 0x68, 0x07, 0x11); // enable buzzer
	while(heldC() && heldD()); // C and D got us here; now wait to let go
	write(1,0,1, 0x68, 0x07, 0x90); // disable buzzer

	hh = read(1,0,1, 0x68, 0x03); // actually day of week
	mm = read(1,0,1, 0x68, 0x05); // month
	ss = read(1,0,1, 0x68, 0x04); // actually day of month
	cursor = 0;

	while(!(heldC() && heldD())) {
		oneOrTwoDigitBuf(0, hh); // day of week
		oneOrTwoDigitBuf(3, mm); // month
		oneOrTwoDigitBuf(6, ss); // day

		// draw cursor as two centered dots on left or right
		switch(cursor) {
			case 0:
				drawCursor(2);
				clrCol(5);
				break;
			case 1:
				drawCursor(2);
				drawCursor(5);
				break;
			default: // should be 2
				clrCol(2);
				drawCursor(5);
		}

		wait(40000);

		if(heldA() || heldB()) {
			// select which value to adjust
			switch(cursor) {
				case 0:
					incDecAB(&hh, 0x01, 0x07);
					break;
				case 1:
					incDecAB(&mm, 0x01, 0x12);
					break;
				default: // should be 2
					incDecAB(&ss, 0x01, 0x31);
			}
		}

		if(heldD()) {
			cursor = (cursor + 1) % 3;
		} else if(heldC()) {
			cursor = (cursor + 2) % 3;
		}
	}

	write(1,0,1, 0x68, 0x03, hh); // write day of week
	write(1,0,1, 0x68, 0x05, mm); // write month
	write(1,0,1, 0x68, 0x04, ss); // write day

	// SET YEAR
	write(1,0,1, 0x68, 0x07, 0x11); // enable buzzer
	while(heldC() && heldD()); // C and D got us here; now wait to let go
	write(1,0,1, 0x68, 0x07, 0x90); // disable buzzer

	hh = read(1,0,1, 0x68, 0x06); // actually year

	clrCol(0);
	clrCol(1);
	clrCol(2);
	clrCol(5);
	clrCol(6);
	clrCol(7);
	while(!(heldC() && heldD())) {
		twoDigitBuf(3, hh); // year

		wait(40000);

		if(heldA() || heldB()) {
			incDecAB(&hh, 0x00, 0x99);
		}
	}

	write(1,0,1, 0x68, 0x06, hh); // write year
	for(int i = 0; i < 3; i++) {
		write(1,0,1, 0x68, 0x07, 0x11); // enable buzzer
		wait(10000);
		write(1,0,1, 0x68, 0x07, 0x90); // disable buzzer
		wait(10000);
	}
	time(1);
}

int alarmhh[] = {0x00, -1, -1, -1, -1, -1, -1, -1};
int alarmmm[] = {0x01, 0, 0, 0, 0, 0, 0, 0};

void alarmSel(int initial) {
	int current = initial;
}

void purgatory(int mm) {
	while(read(1,0,1, 0x68, 0x01) == mm) {
		if(heldB())
			time(0);
	}
	turnOff();
}

void alarmTone() {
	while(!heldB()) {
		write(1,0,1, 0x68, 0x07, 0x11); // enable buzzer
		wait(60000);
		write(1,0,1, 0x68, 0x07, 0x90); // disable buzzer
		wait(60000);
	}
	purgatory(read(1,0,1, 0x68, 0x01));
}

void alarmChk() {
	int mm = read(1,0,1, 0x68, 0x01);
	int hh = read(1,0,1, 0x68, 0x02);
	for(int i = 0; i < 8; i++) {
		if(hh == alarmhh[i] && mm == alarmmm[i])
			alarmTone();
	}
}

ISR(EXT_INT0_vect) {
	time(1);
}

ISR(WATCHDOG_vect) {
	alarmChk();
	turnOff();
}

int main() {
	sleep_disable();
	cli();
	GIMSK |= 0x40; // enable INT0 interrupt
	MCUCR &= ~0x03; // interrupt on level low

	wait(30000);

	if(read(1,0,1, 0x68, 0x00) == 0x80) { // clock not set
		cmd(0,0,1, 0x70, 0x21); // init screen
		cmd(0,0,1, 0x70, 0x81); // screen on
		cmd(0,0,1, 0x70, 0xE0); // dim

		write(1,0,1, 0x68, 0x00, 0x00); // enable DS1307
		write(1,0,1, 0x68, 0x07, 0x90); // disable buzzer

		write(1,0,1, 0x68, 0x07, 0x11); // enable buzzer
		wait(20000);
		write(1,0,1, 0x68, 0x07, 0x90); // disable buzzer
		timeSet();
	}
}
