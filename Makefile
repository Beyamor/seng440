SRCDIR = src
BINDIR = bin
CC = gcc
CFLAGS = --std=c99
CLIBS = m

UNOP_OBJS = $(SRCDIR)/unoptimized.o
UNOP = $(BINDIR)/unoptimized

TRIG_OP_OBJS = $(SRCDIR)/linear_trig_optimized.o
TRIG_OP = $(BINDIR)/linear_trig_optimized

FIXED_OP_OBJS = $(SRCDIR)/fixedpoint_optimized.o
FIXED_OP = $(BINDIR)/fixedpoint_optimized

MORE_OP_OBJS = $(SRCDIR)/unrolling_and_whatevs.o
MORE_OP = $(BINDIR)/unrolling_and_whatevs

ALL_OBJS = $(UNOP_OBJS) $(TRIG_OP_OBJS) $(FIXED_OP_OBJS) $(MORE_OP_OBJS)

all: unoptimized linear_trig_optimized fixedpoint_optimized unrolling_and_whatevs

unoptimized: $(UNOP_OBJS)
	$(CC) $(CFLAGS) -o $(UNOP) $(UNOP_OBJS) -l$(CLIBS)

linear_trig_optimized: $(TRIG_OP_OBJS)
	$(CC) $(CFLAGS) -o $(TRIG_OP) $(TRIG_OP_OBJS) -l$(CLIBS)

fixedpoint_optimized: $(FIXED_OP_OBJS)
	$(CC) $(CFLAGS) -o $(FIXED_OP) $(FIXED_OP_OBJS) -l$(CLIBS)

unrolling_and_whatevs: $(MORE_OP_OBJS)
	$(CC) $(CFLAGS) -o $(MORE_OP) $(MORE_OP_OBJS) -l$(CLIBS)

clean:
	rm -f $(ALL_OBJS) $(BINDIR)/*
