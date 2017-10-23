#include <stdio.h>
#include <stdlib.h>


int label_to_hash(char *label) {
  int hashval = 0;
  while (*label != '\0')
    hashval += *label++;
  return hashval % 1000;
}

int main() {
  printf("%d\n", label_to_hash("@label_2"));
}
