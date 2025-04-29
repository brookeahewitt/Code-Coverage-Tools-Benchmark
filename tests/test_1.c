#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <math.h>
#include <string.h>
#include <unistd.h>

int loops(int x) {
    int *squares = malloc(sizeof(int) * (x + 1));

    if (squares == NULL) {
        return -1;
    }

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

int main(int argc, char* argv[]) {
    int x;
    if (read(STDIN_FILENO, &x, sizeof(x)) != sizeof(x)) {
        printf("Failed to read x\n");
        return -1;
    }

    if (x < 0) {
        x *= -1;
    } 

    printf("%d\n", loops(x));
    return 0;
}