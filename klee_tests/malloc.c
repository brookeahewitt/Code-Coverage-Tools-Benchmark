#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <math.h>
#include <string.h>
#include <klee/klee.h>

int malloc_mem(int numElements) { 
    int *ptr;

    ptr = (int*)malloc(numElements * sizeof(int));

    if (ptr == NULL) {
        return 0;
    }

    free(ptr);

    return 1;
}

int main(int argc, char** argv) {
    int x;

    // FOR KLEE
    klee_make_symbolic(&x, sizeof(x), "x");

    int malloc_success = malloc_mem(x);
    if (malloc_success) {
        printf("Malloc was successful for x = %d", x);
    } else {
        printf("Malloc was not successful for x = %d", x);
    }
    return 0;
}