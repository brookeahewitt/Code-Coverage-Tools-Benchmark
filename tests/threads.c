#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <math.h>
#include <string.h>
#include <pthread.h>
#include <klee/klee.h>

void *printNum(void *arg) {
    int num = *(int *)arg;
    if (num == 0) {
        printf("Value is equal to 0\n");
    } else if (num < 0) {
        printf("Value is negative\n");
    } else {
        printf("Value is positive\n");
    }
    return NULL;
  }

int main(int argc, char** argv) {
    int x, y;

    // FOR KLEE
    // klee_make_symbolic(&x, sizeof(x), "x");
    // klee_make_symbolic(&y, sizeof(y), "y");
        
    x = atoi(argv[1]);
    y = atoi(argv[2]);   

    pthread_t threadID1;
    pthread_t threadID2;

    pthread_create(&threadID1, NULL, printNum, &x);
    pthread_create(&threadID2, NULL, printNum, &y);

    pthread_join(threadID1, NULL);
    pthread_join(threadID2, NULL);

    printf("Both threads have finished.");
    return 0;
}