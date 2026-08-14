CC = gcc
CFLAGS = -Wall -g

RUSTC = rustc
RUSTFLAGS = -O
CARGO = cargo

# The default target that runs when you just type 'make'
all: main_c rustylib

# Rule to compile the executable
main_c: ./app/src/main.c
	$(CC) $(CFLAGS)  ./app/src/main.c -L./lib/rusty/target/release/ -l:libmy_rust_lib.a -o ./main_c-lm

rustylib: ./lib/rusty/calculator.rs
	cd ./lib/rusty && \
	$(CARGO) build --release

clean:
	rm -f hello_c hello_rust