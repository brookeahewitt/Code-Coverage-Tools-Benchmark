#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <math.h>
#include <string.h>
// #include <klee/klee.h>

int fibonacci_sequence(int x) {
    if (x <= 1) {
        return x;
    } else {
        return fibonacci_sequence(x - 1) + fibonacci_sequence(x - 2);
    }
}

int main(int argc, char** argv) {
    int x;

    // FOR KLEE
    // klee_make_symbolic(&x, sizeof(x), "x");
    // klee_assume(x >= 0);
        
    FILE *fp = fopen(argv[1], "r");

    fscanf(fp, "%d", &x);
    fclose(fp); 

    if (x < 0) {
        x *= -1;
    }   

    printf("Integer %d : Fibonacci %d\n", x, fibonacci_sequence(x));
    return 0;
}
