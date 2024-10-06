#include "dassert.h"
#include <stdarg.h>

// UART handle to be used for debug output (replace with your current UART
// handle)
extern UART_HandleTypeDef huart2;

// Debug assertion function
void debug_assert(uint8_t condition, int line, const char *message) {
#ifndef DEBUG
  return;
#endif
  if (!condition) {
    char buffer[128];
    snprintf(buffer, sizeof(buffer), "ASSERT FAILED at line %d: %s\n", line,
             message);
    HAL_UART_Transmit(&huart2, (uint8_t *)buffer, strlen(buffer),
                      HAL_MAX_DELAY);
    // Infinite loop for debugging
    while (1) {
      // Optionally blink an LED here for visual indication
    }
  }
}

// Debug printf function to send formatted strings over UART
void debug_printf(const char *format, ...) {
#ifndef DEBUG
  return;
#endif
  char buffer[128];
  va_list args;
  va_start(args, format);
  vsnprintf(buffer, sizeof(buffer), format, args);
  va_end(args);
  HAL_UART_Transmit(&huart2, (uint8_t *)buffer, strlen(buffer), HAL_MAX_DELAY);
}
