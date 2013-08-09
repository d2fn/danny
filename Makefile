PROGS = dannyd
CXXFLAGS = -g -Wall -Werror -O3
LD = gcc
YACC = bison
LEX = flex
OBJS = 
all: $(PROGS)

clean:
	rm -f $(PROGS) *.o

dannyd: dannyd.o
	$(LD) $(LDFLAGS) $^ -o $@ $(LDLIBS) -ldl

