#!/bin/bash

# Directories
INPUT_BASE=~/Code-Coverage-Tools-Benchmark/program_inputs
BINARY_DIR=~/Code-Coverage-Tools-Benchmark/afl_build
OUTPUT_DIR=~/Code-Coverage-Tools-Benchmark/afl_outputs
AFL_BIN=~/AFLplusplus/afl-fuzz
AFL_COV=~/afl-cov/afl-cov
LCOV_PATH=/usr/bin/lcov
GENHTML_PATH=/usr/bin/genhtml

# Input directory mapping
declare -A INPUT_MAP=(
    [loops_afl]="$INPUT_BASE/one_input"
    [malloc_afl]="$INPUT_BASE/one_input"
    [recursion_afl]="$INPUT_BASE/one_input"
    [conditional_logic_afl]="$INPUT_BASE/two_inputs"
    [input_validation_afl]="$INPUT_BASE/two_inputs"
    [signals_afl]="$INPUT_BASE/two_inputs"
    [threads_afl]="$INPUT_BASE/two_inputs"
    [math_ops_afl]="$INPUT_BASE/three_inputs"
    [fuzzgoat_afl]="$INPUT_BASE/seed"
)

# Create output directory if it doesn't exist
mkdir -p "$OUTPUT_DIR"

# Loop through all AFL binaries
for binary_file in "$BINARY_DIR"/*_afl; do
    # Get base name of binary
    base_name=$(basename "$binary_file")

    # Resolve correct input directory from map
    input_dir="${INPUT_MAP[$base_name]}"
    run_output_dir="${OUTPUT_DIR}/${base_name}_output"

    if [ -z "$input_dir" ]; then
        echo "Skipping $base_name: No input directory defined."
        continue
    fi

    echo "Running AFL on $base_name with inputs from $input_dir (10-minute timeout)..."

    # Run AFL with 10-minute timeout
    timeout 600s "$AFL_BIN" -i "$input_dir" -o "$run_output_dir" -- "$binary_file" @@

    # Check if afl-fuzz timed out
    if [ $? -eq 124 ]; then
        echo "AFL on $base_name timed out after 10 minutes."
    else
        echo "Done: output in $run_output_dir"
    fi
done

# Run afl-cov on all output directories
echo "Running afl-cov on all outputs..."
for binary_file in "$BINARY_DIR"/*_afl; do
    base_name=$(basename "$binary_file")
    run_output_dir="${OUTPUT_DIR}/${base_name}_output"
    binary_full_path="/home/brooke/Code-Coverage-Tools-Benchmark/afl_build/$base_name"

    if [ ! -d "$run_output_dir/default" ]; then
        echo "Skipping $base_name: no AFL output to analyze."
        continue
    fi

    echo "Generating coverage report for $base_name..."

    "$AFL_COV" \
        -d "$run_output_dir/default/" \
        --coverage-cmd="$binary_full_path AFL_FILE" \
        --code-dir "/home/brooke/Code-Coverage-Tools-Benchmark/afl_build/" \
        --lcov-path "$LCOV_PATH" \
        --genhtml-path "$GENHTML_PATH" \
        --overwrite
done
