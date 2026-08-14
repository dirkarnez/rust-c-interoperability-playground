CC = gcc
CFLAGS = -Wall -g

RUSTC = rustc
RUSTFLAGS = -O
CARGO = cargo

# The default target that runs when you just type 'make'
all: rustylib main_c

# Rule to compile the executable
main_c: ./lib/rusty/target/release/librusty.a ./app/src/main.c
	$(CC) $(CFLAGS) ./app/src/main.c -I./lib/rusty -L./lib/rusty/target/release/ -l:librusty.a -o ./main_c -lm

rustylib: ./lib/rusty/calculator.rs
	cd ./lib/rusty && \
	$(CARGO) build --release

clean:
	rm -rf ./main_c
	rm -rf ./lib/rusty/target