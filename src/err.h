#ifndef ERR_H
#define ERR_H

/*
 * Format and print provided error message to stderr.
 * Include strerror if errno is set.
 * Exit the program with -1 exit code.
 */
void errexit(const char *format, ...);

#endif /* ERR_H */
