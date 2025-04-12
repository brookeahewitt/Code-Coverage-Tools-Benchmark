#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <math.h>
#include <string.h>
#include <klee/klee.h>

int loops(int x) {
    int *squares = malloc(sizeof(int) * (x + 1));

    for (int i = 0; i <= x; i++) {
        squares[i] = i*i;
    }

    int sum = 0;
    int i = 0;
    while (i <= x) {
        sum += squares[i];
        i++;
    }

    return sum;
}

int main(int argc, char** argv) {
    int x;

    // FOR KLEE
    if (argc > 1 && strcmp(argv[1], "-k") == 0) {
        klee_make_symbolic(&x, sizeof(x), "x");
    } else if (argc == 2) { // FOR AFL
        x = atoi(argv[1]);
        if (x < 0) {
            x *= -1;
        }
    } else {
        fprintf(stderr, "Usage: %s <int x>\n", argv[0]);
        return 1;
    }    

    printf("Sum of Squares from 0 to %d: %d", x, loops(x));
    return 0;
}
