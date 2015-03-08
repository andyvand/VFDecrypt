all: vfdecrypt

CC=clang
CFLAGS="-arch i386 -arch x86_64 -Ofast"

vfdecrypt: 
	$(CC) $(CFLAGS) -o vfdecrypt vfdecrypt.c -lcrypto

install: 
	cp ./vfdecrypt /usr/local/bin
	ldconfig

uninstall:
	rm -rf /usr/local/bin/vfdecrypt
clean:
	rm -rf ./vfdecrypt
