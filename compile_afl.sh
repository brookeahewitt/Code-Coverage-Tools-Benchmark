#!/bin/bash

# Set paths
TEST_DIR=~/Code-Coverage-Tools-Benchmark/tests
BUILD_DIR=~/Code-Coverage-Tools-Benchmark/afl_build

# Create build directory if it doesn't exist
mkdir -p "$BUILD_DIR"

# Loop over all .c files in the test directory
for src_file in "$TEST_DIR"/*.c; do
    # Get the base filename without directory or extension
    base_name=$(basename "$src_file" .c)
    
    # Construct the output filename
    output_file="${BUILD_DIR}/${base_name}_afl"

    # Compile with coverage flags and output the binary
    ~/AFLplusplus/afl-gcc-fast -fprofile-arcs -ftest-coverage -O0 -o "$output_file" "$src_file" -lm
    
    echo "Compiled $src_file -> $output_file"
done
