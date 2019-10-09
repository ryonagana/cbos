#ifndef IO_H
#define IO_H
#include <stdint.h>

void outb(uint16_t port, uint8_t val);
uint8_t inb(uint16_t port);
uint16_t check_interrupts_enabled();
#endif
