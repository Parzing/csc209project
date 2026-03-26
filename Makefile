PORT=61674
CFLAGS = -DPORT=$(PORT) -Wall 

all: server client

server: server.o socket.o message.o
	gcc ${CFLAGS} -o $@ $^

client: client.o socket.o message.o
	gcc ${CFLAGS} -o $@ $^

%.o: %.c socket.h
	gcc ${CFLAGS} -c $<

clean:
	rm *.o server client

