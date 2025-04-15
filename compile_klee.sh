#!/bin/bash

# Set paths
TEST_DIR=~/Code-Coverage-Tools-Benchmark/klee_tests
BUILD_DIR=~/Code-Coverage-Tools-Benchmark/klee_build
INCLUDE_DIR=~/klee/include

# Create build directory if it doesn't exist
mkdir -p "$BUILD_DIR"

# Loop through all .c files in the test directory
for src_file in "$TEST_DIR"/*.c; do
    # Get the base name without extension
    base_name=$(basename "$src_file" .c)

    # Output file path
    output_file="${BUILD_DIR}/${base_name}_klee.bc"

    # Compile to LLVM bitcode for KLEE
    clang-14 -I "$INCLUDE_DIR" -emit-llvm -c -g -O0 -Xclang -disable-O0-optnone "$src_file" -o "$output_file"

    echo "Compiled $src_file -> $output_file"
done
