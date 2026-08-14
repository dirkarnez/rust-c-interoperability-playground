// build.rs
use std::env;
use std::path::PathBuf;

fn main() {
    let crate_dir = env::var("CARGO_MANIFEST_DIR").unwrap();
    let package_name = env::var("CARGO_PKG_NAME").unwrap();
    
    // Define where to save the generated header
    let output_file = PathBuf::from(&crate_dir)
        .join(format!("{}.h", package_name));

    // Generate the C header from the Rust source files
    cbindgen::generate(&crate_dir)
        .expect("Unable to generate bindings")
        .write_to_file(output_file);
}

