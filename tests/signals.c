#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <math.h>
#include <string.h>
#include <signal.h>
#include <klee/klee.h>

void handle_signal(int signal) {
    if (signal == SIGFPE) {
        printf("Divide by zero error. Program stopped.\n");
        exit(0);
    }
}

int divideNumbers(int x, int y) {
    signal(SIGFPE, handle_signal);

    int div = x/y;

    if (div == 1) {
        printf("x is equal to y\n");
    } else if (div < 0) {
        printf("x is less than y\n");
    } else if (div > 0) {
        printf("x is greater than y\n");
    } else {
        printf("x is 0\n");
    }

    return div;
}

int main(int argc, char** argv) {
    int x, y;

    // FOR KLEE
    if (argc > 1 && strcmp(argv[1], "-k") == 0) {
        klee_make_symbolic(&x, sizeof(x), "x");
        klee_make_symbolic(&y, sizeof(y), "y");
    } else if (argc == 3) { // FOR AFL
        x = atoi(argv[1]);
        y = atoi(argv[2]);
    } else {
        fprintf(stderr, "Usage: %s <int x> <int y>\n", argv[0]);
        return 1;
    }    

    int div = divideNumbers(x, y);
    printf("%d/%d = %d", x, y, div);

    return 0;
}