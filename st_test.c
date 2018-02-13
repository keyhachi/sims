#include <stdio.h>
// #include "sim.h"
#include <string.h>
#include <stdlib.h>

// char* parse_line1(char* buf) {
//   char* tp;
//   tp = strtok(buf, " \t\n,");
//   return tp;
// }

int main(int argc, char* argv[]) {
  FILE *fp = fopen(argv[1], "r");
  char a[128];
  char *tp, *op0, *op2, *op3;
  int op1 = 0;
  fgets(a, 128, fp);
  tp = strtok(a, " \t\n,");
  op0 = tp;
  sscanf(strtok(NULL, " \t\n,"), "f%d", &op1);
  tp = strtok(NULL, " \t\n,");
  op2 = tp;
  tp = strtok(NULL, " \t\n,");
  op3 = tp;
  printf("%s\n%d\n%s\n%s\n", op0,op1,op2,op3);
  return 0;
}
