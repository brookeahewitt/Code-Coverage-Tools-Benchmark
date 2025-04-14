#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <klee/klee.h>

#define ARR_LEN 8

void validate(int idx, int divisor) {
    int arr[ARR_LEN] = {10, 20, 30, 40, 50, 60, 70, 80};

    if (idx >= 0 && idx < ARR_LEN) {
        printf("arr[%d] = %d\n", idx, arr[idx]);
    } else {
        printf("Index %d out of bounds!\n", idx);
    }

    if (divisor != 0) {
        printf("100 / %d = %d\n", divisor, 100 / divisor);
    } else {
        printf("Division by zero prevented.\n");
    }

    if (idx < 0 || divisor < 0) {
        printf("Negative input detected.\n");
    }

    if (idx == 6 && divisor == 5) {
        printf("Special case that AFL/KLEE should find!\n");
    }
}

int main(int argc, char** argv) {
    int x, y;

    if (argc > 1 && strcmp(argv[1], "-k") == 0) {
        klee_make_symbolic(&x, sizeof(x), "x");
        klee_make_symbolic(&y, sizeof(y), "y");
    } else if (argc == 3) {
        x = atoi(argv[1]);
        y = atoi(argv[2]);
    } else {
        fprintf(stderr, "Usage: %s <int x> <int y> or %s -k\n", argv[0], argv[0]);
        return 1;
    }

    validate(x, y);
    return 0;
}
