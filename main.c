#include "mylib.h"
#include <stdio.h>

int main(){
    float x = 3.4;
    int a = 5;

    float y = square(x);

    if(isodd(a)){
        printf("%d is odd.\n", a);
    }
    else{
        printf("%d is not odd.\n", a);
    }
    return 0;
}