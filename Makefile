SRCDIR = src
BINDIR = bin
CC = gcc
CFLAGS =
CLIBS = m

UNOP_OBJS = $(SRCDIR)/unoptimized.o
UNOP = $(BINDIR)/unoptimized

OP_OBJS = $(SRCDIR)/optimized.o
OP = $(BINDIR)/optimized

FIXED_OP_OBJS = $(SRCDIR)/fixedpoint_optimized.o
FIXED_OP = $(BINDIR)/fixedpoint_optimized

all: unoptimized optimized fixedpoint_optimized

unoptimized: $(UNOP_OBJS)
	$(CC) $(CFLAGS) -o $(UNOP) $(UNOP_OBJS) -l$(CLIBS)

optimized: $(OP_OBJS)
	$(CC) $(CFLAGS) -o $(OP) $(OP_OBJS) -l$(CLIBS)

fixedpoint_optimized: $(FIXED_OP_OBJS)
	$(CC) $(CFLAGS) -o $(FIXED_OP) $(FIXED_OP_OBJS) -l$(CLIBS)

clean:
	rm -f $(UNOP_OBJS) $(OP_OBJS) $(FIXED_OP_OBJS) $(BINDIR)/*
