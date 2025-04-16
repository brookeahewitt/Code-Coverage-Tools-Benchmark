#!/bin/bash

# Set paths
TEST_DIR=~/Code-Coverage-Tools-Benchmark/tests
BUILD_DIR=~/Code-Coverage-Tools-Benchmark/symcc_build
SYMCC=~/symcc/build/symcc
FUZZGOAT_DIR=~/Code-Coverage-Tools-Benchmark/fuzzgoat

# Create the build directory if it doesn't exist
mkdir -p "$BUILD_DIR"

# Compile fuzzgoat.c and main.c into fuzzgoat_symcc
FUZZGOAT_SRC_FILES="$FUZZGOAT_DIR/fuzzgoat.c $FUZZGOAT_DIR/main.c"
FUZZGOAT_OUTPUT="$BUILD_DIR/fuzzgoat_symcc"

"$SYMCC" -I"$FUZZGOAT_DIR" -O0 -o "$FUZZGOAT_OUTPUT" $FUZZGOAT_SRC_FILES -lm

echo "Compiled fuzzgoat sources -> $FUZZGOAT_OUTPUT"

# Loop through all .c files in the test directory
for src_file in "$TEST_DIR"/*.c; do
    # Get the base name without extension
    base_name=$(basename "$src_file" .c)

    # Output file path
    output_file="${BUILD_DIR}/${base_name}_symcc"

    # Compile using SymCC
    "$SYMCC" -O0 -o "$output_file" "$src_file" -lm

    echo "Compiled $src_file -> $output_file"
done
