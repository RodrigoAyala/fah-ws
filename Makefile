CC := gcc
CFLAGS := -O3

all:
	$(CC) $(CFLAGS) -DLWS_NO_FORK src/fah-ws.c lib/libwebsockets/*.c lib/hiredis/*.c -lz -levent -o bin/fah-ws  
	$(CC) $(CFLAGS) -DLWS_NO_FORK src/test-client.c lib/libwebsockets/*.c lib/hiredis/*.c -lz -o bin/test-client

debug:
	gcc -g -DLWS_NO_FORK src/fah-ws.c lib/libwebsockets/*.c lib/hiredis/*.c -lz -o bin/fah-ws

clean:
	rm -Rf bin fah-ws *.o fah-ws.dSYM
