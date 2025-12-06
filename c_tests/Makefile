CC=gcc
CFLAGS=-Iinclude -Wall
TESTS=test_hello
SRC=hello.c
OBJ=$(SRC:.c=.o) $(TESTS:.c=.o)

all: $(OBJ)
	$(CC) -o $(TESTS) $(OBJ)

$(TESTS): $(TESTS).o $(SRC)
	$(CC) -o $@ $^ $(CFLAGS)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJ) $(TESTS)