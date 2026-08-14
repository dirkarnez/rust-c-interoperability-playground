@echo off

@REM cargo install --force cbindgen
@REM cbindgen --help
@REM cbindgen --lang c --config cbindgen.toml --crate my_rust_library --output my_header.h
@REM cargo build --release

@REM gcc main.c -L./target/release -lrusty -lpthread -ldl -lm -o main
