CC := gcc
CFLAGS := -O2

all:
	gcc -DLWS_NO_FORK fah-ws.c lib/*.c -lz -o fah-ws  

clean:
	rm -f fah-ws *.o
