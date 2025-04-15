#!/bin/bash

# Directories
INPUT_DIR=~/Code-Coverage-Tools-Benchmark/klee_build
OUTPUT_DIR=~/Code-Coverage-Tools-Benchmark/klee_outputs
KLEE_BIN=~/klee/build/bin/klee

# Create output directory if it doesn't exist
mkdir -p "$OUTPUT_DIR"

# Loop through all .bc files
for bc_file in "$INPUT_DIR"/*.bc; do
    # Get base name without extension and suffix
    base_name=$(basename "$bc_file" _klee.bc)

    # Destination for this specific file's KLEE output
    run_output_dir="${OUTPUT_DIR}/${base_name}_klee_output"

    echo "Running KLEE on $bc_file (10-minute timeout)..."

    # Run KLEE with correct argument order
    "$KLEE_BIN" \
        --only-output-states-covering-new \
        --max-time=600s \
        --output-dir="$run_output_dir" \
        "$bc_file"

    echo "Done: output in $run_output_dir"
done
