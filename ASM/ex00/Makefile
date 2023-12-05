TSOBJS = test.o
TROBJS = test_replica.o
CLOBJS = Colleen.o

ifdef DEBUG
	DEBUGFLGS = -g
else
	DEBUGFLGS =
endif

LDFLAGS = -e _main -arch arm64 -lSystem -syslibroot `xcrun -sdk macosx --show-sdk-path`

%.o: %.s
	as $(DEBUGFLGS) -o $@ $<

all: test


test: test.o
	ld -o test $(TSOBJS) $(LDFLAGS)

test_replica: test_replica.o
	ld -o test $(TROBJS) $(LDFLAGS)

Colleen: Colleen.o
	ld -o Colleen $(CLOBJS) $(LDFLAGS)

fclean:
	rm *.o test