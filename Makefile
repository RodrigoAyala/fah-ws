CC := gcc
CFLAGS := -O2

all:
	gcc -DLWS_NO_FORK src/fah-ws.c lib/libwebsockets/*.c lib/hiredis/*.c -lz -o bin/fah-ws  

debug:
	gcc -g -DLWS_NO_FORK src/fah-ws.c lib/libwebsockets/*.c lib/hiredis/*.c -lz -o bin/fah-ws

clean:
	rm -f bin fah-ws *.o fah-ws.dSYM
