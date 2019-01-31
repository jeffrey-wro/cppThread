OBJS	= cpp_thread.o
SOURCE	= cpp_thread.cpp
HEADER	= 
OUT		= cpp_thread.out
CC		= /usr/local/oecore-x86_64/sysroots/x86_64-nilrtsdk-linux/usr/bin/arm-nilrt-linux-gnueabi/arm-nilrt-linux-gnueabi-g++ 
CFLAGS	= --sysroot=/usr/local/oecore-x86_64/sysroots/cortexa9-vfpv3-nilrt-linux-gnueabi -std=c++11 -pthread
FLAGS	= -g -c -Wall
LFLAGS 	= 

all: $(OBJS)
	$(CC) $(CFLAGS) -g $(OBJS) -o $(OUT) $(LFLAGS)

cpp_thread.o: cpp_thread.cpp
	$(CC) $(CFLAGS) $(FLAGS) cpp_thread.cpp 


clean:
	rm -f $(OBJS) $(OUT)
