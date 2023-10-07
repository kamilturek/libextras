#include <errno.h>
#include <stdarg.h>
#include <stdio.h>
#include <stdlib.h>

#define BUF_SIZE 512

void errexit(const char *format, ...) {
  va_list args;
  char buffer[BUF_SIZE];

  va_start(args, format);
  vsnprintf(buffer, BUF_SIZE, format, args);
  va_end(args);

  if (errno != 0)
    perror(buffer);
  else
    fprintf(stderr, "%s\n", buffer);

  exit(EXIT_FAILURE);
}
