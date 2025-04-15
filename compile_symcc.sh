#!/bin/bash

# Set paths
TEST_DIR=~/Code-Coverage-Tools-Benchmark/tests
BUILD_DIR=~/Code-Coverage-Tools-Benchmark/symcc_build
SYMCC=~/symcc/build/symcc

# Create the build directory if it doesn't exist
mkdir -p "$BUILD_DIR"

# Loop through all .c files in the test directory
for src_file in "$TEST_DIR"/*.c; do
    # Get the base name without extension
    base_name=$(basename "$src_file" .c)

    # Output file path
    output_file="${BUILD_DIR}/${base_name}_symcc"

    # Compile using SymCC
    "$SYMCC" -o "$output_file" "$src_file" -lm

    echo "Compiled $src_file -> $output_file"
done
