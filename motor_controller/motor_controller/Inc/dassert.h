#ifndef DASSERT_H
#define DASSERT_H

#include "main.h"
#include <stdint.h>
#include <stdio.h>

void debug_assert(uint8_t condition, int line, const char *message);
void debug_printf(const char *format, ...);

#endif // DASSERT_H
