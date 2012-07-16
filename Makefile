SRCDIR = src
BINDIR = bin
CC = gcc
CFLAGS =
CLIBS = m

UNOP_OBJS = $(SRCDIR)/unoptimized.o
UNOP = $(BINDIR)/unoptimized

all: unoptimized

unoptimized: $(UNOP_OBJS)
	$(CC) $(CFLAGS) -o $(UNOP) $(UNOP_OBJS) -l$(CLIBS)

clean:
	rm -f $(UNOP_OBJS) $(BINDIR)/*
