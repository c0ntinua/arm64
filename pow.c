#include<stdio.h>
extern long ppow(long, long);
int main() {
    for (long i = 0; i < 10; i++) for (long j = 0; j < 10 ; j++)
        printf("%ld^%ld = %ld\n",i,j,ppow(i,j));
    
}
