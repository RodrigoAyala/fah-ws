CC := gcc
CFLAGS := -O2

all:
	gcc -DLWS_NO_FORK fah-ws.c lib/libwebsockets/*.c lib/hiredis/*.c -lz -o src/fah-ws  

debug:
	gcc -g -DLWS_NO_FORK fah-ws.c lib/libwebsockets/*.c lib/hiredis/*.c -lz -o src/fah-ws

clean:
	rm -f fah-ws *.o
