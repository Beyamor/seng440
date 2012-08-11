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

MORE_OP_OBJS = $(SRCDIR)/unrolling_and_whatevs.o
MORE_OP = $(BINDIR)/unrolling_and_whatevs

ALL_OBJS = $(UNOP_OBJS) $(OP_OBJS) $(FIXED_OP_OBJS) $(MORE_OP_OBJS)

all: unoptimized optimized fixedpoint_optimized unrolling_and_whatevs

unoptimized: $(UNOP_OBJS)
	$(CC) $(CFLAGS) -o $(UNOP) $(UNOP_OBJS) -l$(CLIBS)

optimized: $(OP_OBJS)
	$(CC) $(CFLAGS) -o $(OP) $(OP_OBJS) -l$(CLIBS)

fixedpoint_optimized: $(FIXED_OP_OBJS)
	$(CC) $(CFLAGS) -o $(FIXED_OP) $(FIXED_OP_OBJS) -l$(CLIBS)

unrolling_and_whatevs: $(MORE_OP_OBJS)
	$(CC) $(CFLAGS) -o $(MORE_OP) $(MORE_OP_OBJS) -l$(CLIBS)

clean:
	rm -f $(ALL_OBJS) $(BINDIR)/*
