#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <math.h>
#include <string.h>
#include <klee/klee.h>

void calendar(int day, int month) {
    switch (day) {
        case 1:
            printf("Sunday\n");
            break;
        case 2:
            printf("Monday\n");
            break;
        case 3:
            printf("Tuesday\n");
            break;
        case 4:
            printf("Wednesday\n");
            break;
        case 5:
            printf("Thursday\n");
            break;
        case 6:
            printf("Friday\n");
            break;
        case 7:
            printf("Saturday\n");
            break;
        default:
            printf("Invalid day of the week\n");
            break;
    }

    if (month == 1) {
        printf("January\n");
    } else if (month == 2) {
        printf("February\n");
    } else if (month == 3) {
        printf("March\n");
    } else if (month == 4) {
        printf("April\n");
    } else if (month == 5) {
        printf("May\n");
    } else if (month == 6) {
        printf("June\n");
    } else if (month == 7) {
        printf("July\n");
    } else if (month == 8) {
        printf("August\n");
    } else if (month == 9) {
        printf("September\n");
    } else if (month == 10) {
        printf("October\n");
    } else if (month == 11) {
        printf("November\n");
    } else if (month == 12) {
        printf("December\n");
    } else {
        printf("Invalid month\n");
    }
}

int main(int argc, char** argv) {
    int x, y;

    // FOR KLEE
    klee_make_symbolic(&x, sizeof(x), "x");
    klee_make_symbolic(&y, sizeof(y), "y");

    calendar(x, y);
    return 0;
}