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

MORE_OP_OBJS = $(SRCDIR)/more_optimized.o
MORE_OP = $(BINDIR)/more_optimized

INLINE_MORE_OP_OBJS = $(SRCDIR)/inline_more_optimized.o
INLINE_MORE_OP = $(BINDIR)/inline_more_optimized

MACRO_MORE_OP_OBJS = $(SRCDIR)/macro_more_optimized.o
MACRO_MORE_OP = $(BINDIR)/macro_more_optimized

ALL_OBJS = $(UNOP_OBJS) $(TRIG_OP_OBJS) $(FIXED_OP_OBJS) $(MORE_OP_OBJS) $(INLINE_MORE_OP_OBJS)

all: unoptimized linear_trig_optimized fixedpoint_optimized more_optimized inline_more_optimized macro_more_optimized

unoptimized: $(UNOP_OBJS)
	$(CC) $(CFLAGS) -o $(UNOP) $(UNOP_OBJS) -l$(CLIBS)

linear_trig_optimized: $(TRIG_OP_OBJS)
	$(CC) $(CFLAGS) -o $(TRIG_OP) $(TRIG_OP_OBJS) -l$(CLIBS)

fixedpoint_optimized: $(FIXED_OP_OBJS)
	$(CC) $(CFLAGS) -o $(FIXED_OP) $(FIXED_OP_OBJS) -l$(CLIBS)

more_optimized: $(MORE_OP_OBJS)
	$(CC) $(CFLAGS) -o $(MORE_OP) $(MORE_OP_OBJS) -l$(CLIBS)

inline_more_optimized: $(INLINE_MORE_OP_OBJS)
	$(CC) $(CFLAGS) -o $(INLINE_MORE_OP) $(INLINE_MORE_OP_OBJS) -l$(CLIBS)

macro_more_optimized: $(MACRO_MORE_OP_OBJS)
	$(CC) $(CFLAGS) -o $(MACRO_MORE_OP) $(MACRO_MORE_OP_OBJS) -l$(CLIBS)

clean:
	rm -f $(ALL_OBJS) $(BINDIR)/*
