#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <math.h>
#include <string.h>
#include <klee/klee.h>

int loops(int x) {
    // Find sum
}

int main(int argc, char** argv) {
    int x;

    // FOR KLEE
    if (argc > 1 && strcmp(argv[1], "-k") == 0) {
        klee_make_symbolic(&x, sizeof(x), "x");
    } else if (argc == 2) { // FOR AFL
        x = atoi(argv[1]);
    } else {
        fprintf(stderr, "Usage: %s <int x>\n", argv[0]);
        return 1;
    }    

    loops(x);
    return 0;
}
