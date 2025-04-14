#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <math.h>
#include <string.h>
#include <signal.h>
// #include <klee/klee.h>

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
    // klee_make_symbolic(&x, sizeof(x), "x");
    // klee_make_symbolic(&y, sizeof(y), "y");
        
    FILE *fp = fopen(argv[1], "r");

    fscanf(fp, "%d %d", &x, &y);
    fclose(fp); 

    int div = divideNumbers(x, y);
    printf("%d/%d = %d", x, y, div);

    return 0;
}