#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <math.h>
#include <string.h>
// #include <klee/klee.h>

void math_test(int a, int b, double x) {
    // Integer operations
    int add = a + b;
    int mult = a * b;
    printf("Integer Addition: %d + %d = %d\n", a, b, add);
    printf("Integer Multiplication: %d * %d = %d\n", a, b, mult);
    
    if (b != 0) {
        printf("Integer Division: %d / %d = %d\n", a, b, a / b);
    } else {
        printf("Integer Division: Division by zero skipped\n");
    }

    // Floating point operations
    float add1 = x + x;
    float mult1 = x * x;
    printf("Floating-Point Addition: %f + %f = %f\n", x, x, add1);
    printf("Floating-Point Multiplication: %f * %f = %f\n", x, x, mult1);
    printf("Sine(%f) = %f\n", x, sin(x));
}

int main(int argc, char** argv) {
    int a, b;
    double x;

    // FOR KLEE
    // klee_make_symbolic(&a, sizeof(a), "a");
    // klee_make_symbolic(&b, sizeof(b), "b");
    // klee_make_symbolic(&x, sizeof(x), "x");
        
    FILE *fp = fopen(argv[1], "r");

    fscanf(fp, "%d %d %f", &a, &b, &x);
    fclose(fp);   

    math_test(a, b, x);
    return 0;
}
