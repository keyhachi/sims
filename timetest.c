#include <stdio.h>
#include <sys/time.h>

int main() {
 int a=10;
 int t0,t1,ts1,ts0;
 struct timeval tv;
 gettimeofday(&tv, NULL);
 ts0 = tv.tv_sec;
 t0 = tv.tv_usec;
 //10億
 for(int i=0; i<1e7; ++i) {
   int b=a+3;
   a=b;
 }
 gettimeofday(&tv, NULL);
 t1 = tv.tv_usec;
 ts1 = tv.tv_sec;
 printf("%d %d\n", ts1 - ts0, t1 - t0);
 return 0;
}
