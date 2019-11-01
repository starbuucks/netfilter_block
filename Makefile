all: netfilter_block

netfilter_block: main.o pcap_handle.o
	g++ -g -o netfilter_block main.o pcap_handle.o -lnetfilter_queue

pcap_handle.o: pcap_handle.cpp
	g++ -g -c -o pcap_handle.o pcap_handle.cpp

main.o: main.cpp
	g++ -g -c -o main.o main.cpp

clean:
	rm -f netfilter_block
	rm -f *.o
