CC = cc
CFLAGS = -Wall -Wextra -pedantic -std=c99
RM = rm -f
BIN_DIR = bin

default: all

all: $(BIN_DIR)/kilo

$(BIN_DIR)/kilo: ./src/kilo.c
	mkdir -p $(BIN_DIR)
	$(CC) -o $(BIN_DIR)/kilo ./src/kilo.c $(CFLAGS)

clean veryclean:
	$(RM) $(BIN_DIR)/kilo