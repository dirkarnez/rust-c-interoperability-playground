@echo off

cargo install --force cbindgen
cbindgen --help
cbindgen --lang c --config cbindgen.toml --crate my_rust_library --output my_header.h
cargo build --release

gcc main.c -L./target/release -lrusty -lpthread -ldl -lm -o main
