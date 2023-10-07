SRC_FILES := $(wildcard src/*.c)
HEADER_FILES := $(SRC_FILES:.c=.h)
OBJ_FILES := $(SRC_FILES:.c=.o)
LIB_NAME := extras
LIB_PATH := build/lib$(LIB_NAME).a
INSTALL_LIB_DIR := /usr/local/lib
INSTALL_HEADER_DIR := /usr/local/include/$(LIB_NAME)

all: $(LIB_PATH)

$(LIB_PATH): $(OBJ_FILES)
	ar rcs $@ $^

%.o: %.c
	gcc -c -o $@ $<

install: $(LIB_PATH)
	cp $(LIB_PATH) $(INSTALL_LIB_DIR)
	mkdir -p $(INSTALL_HEADER_DIR)
	cp $(HEADER_FILES) $(INSTALL_HEADER_DIR)

clean:
	rm -f $(OBJ_FILES) $(LIB_PATH)

.PHONY: all clean install
