CC = gcc
CFLAGS = -Wall -Wextra -std=c99 -g

SOURCES = $(wildcard source/*.c)
OBJECTS = $(SOURCES:.c=.o)

.PHONY: all clean

all: PSCF

PSCF: $(OBJECTS)
	$(CC) $(OBJECTS) -o $@ -lpthread -lrt

source/%.o: source/%.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJECTS) PSCF
