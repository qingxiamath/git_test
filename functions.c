#include "mylib.h"

float square(float x){
    return x*x;
}

int isodd(int x){
    if (x % 2 != 0){
        return 1;
    }
    else{
        return 0;
    }
}