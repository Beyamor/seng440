SRCDIR = src
BINDIR = bin
CC = gcc
CFLAGS =
CLIBS = m

UNOP_OBJS = $(SRCDIR)/unoptimized.o
UNOP = $(BINDIR)/unoptimized

OP_OBJS = $(SRCDIR)/optimized.o
OP = $(BINDIR)/optimized

all: unoptimized

unoptimized: $(UNOP_OBJS)
	$(CC) $(CFLAGS) -o $(UNOP) $(UNOP_OBJS) -l$(CLIBS)

optimized: $(OP_OBJS)
	$(CC) $(CFLAGS) -o $(OP) $(OP_OBJS) -l$(CLIBS)

clean:
	rm -f $(UNOP_OBJS) $(OP_OBJS) $(BINDIR)/*
