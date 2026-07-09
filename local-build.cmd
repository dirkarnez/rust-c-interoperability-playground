@echo off

cargo install --force cbindgen
cbindgen --help
cbindgen --lang c --config cbindgen.toml --crate my_rust_library --output my_header.h
cargo build --release
