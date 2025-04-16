#!/bin/bash

# Set paths
TEST_DIR=~/Code-Coverage-Tools-Benchmark/tests
BUILD_DIR=~/Code-Coverage-Tools-Benchmark/afl_build
FUZZGOAT_DIR=~/Code-Coverage-Tools-Benchmark/fuzzgoat

# Create build directory if it doesn't exist
mkdir -p "$BUILD_DIR"

# Compile fuzzgoat.c and main.c into fuzzgoat_afl
FUZZGOAT_SRC_FILES="$FUZZGOAT_DIR/fuzzgoat.c $FUZZGOAT_DIR/main.c"
FUZZGOAT_OUTPUT="$BUILD_DIR/fuzzgoat_afl"

~/AFLplusplus/afl-gcc-fast -fprofile-arcs -ftest-coverage -O0 -o "$FUZZGOAT_OUTPUT" $FUZZGOAT_SRC_FILES -lm

echo "Compiled fuzzgoat sources -> $FUZZGOAT_OUTPUT"

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
