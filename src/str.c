#include <string.h>

#include "strutils.h"

int startswith(const char *str, const char *prefix) {
  return (strncmp(str, prefix, strlen(prefix)) == 0);
}
