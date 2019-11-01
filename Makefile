all: netfilter_block

netfilter_block: main.o http_util.o packet.o
	g++ -g -o netfilter_block main.o packet.o http_util.o -lnetfilter_queue

http_util.o: http_util.cpp http_util.h
	g++ -g -c -o http_util.o http_util.cpp

packet.o: packet.cpp packet.h
	g++ -g -c -o packet.o packet.cpp

main.o: main.cpp http_util.h packet.h
	g++ -g -c -o main.o main.cpp

clean:
	rm -f netfilter_block
	rm -f *.o
