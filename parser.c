#include <stdio.h>
#include "sim.h"
#include <string.h>
#include <stdlib.h>
#include <math.h>

Ins_array init_array() {
  return calloc(SIZE, sizeof(Ins_p))
}

Ins_p init_insp() {
  return calloc(1, sizeof(struct ins));
}

void parse_error(int pc, char* buf) {
  printf("parse_error!!\n\tline = %d\n\t%s\n", pc, buf);
}

struct ins parse_line(char* buf) {
  struct ins ins_data;
  char *tp;
  tp = strtok(buf, " \t\n,");

  if (strcmp(tp, "add") == 0) {
    ins_data.name = ADD;
    if (!sscanf(strtok(NULL, " \t\n,"), "r%d", ins_data.op1) || sscanf(strtok(NULL, " \t\n,"), "r%d", ins_data.op2) || sscanf(strtok(NULL, " \t\n,"), "r%d", ins_data.op3))
      parse_error(pc, buf);
  }
  if (strcmp(tp, "addi") == 0) {
    ins_data.name = ADDI;
    if (!sscanf(strtok(NULL, " \t\n,"), "r%d", ins_data.op1) || sscanf(strtok(NULL, " \t\n,"), "r%d", ins_data.op2) || sscanf(strtok(NULL, " \t\n,"), "$%d", ins_data.op3))
      parse_error(pc, buf);
  }
  if (strcmp(tp, "sub") == 0) {
    ins_data.name = SUB;
    if (!sscanf(strtok(NULL, " \t\n,"), "r%d", ins_data.op1) || sscanf(strtok(NULL, " \t\n,"), "r%d", ins_data.op2) || sscanf(strtok(NULL, " \t\n,"), "r%d", ins_data.op3))
      parse_error(pc, buf);
  }
  if (strcmp(tp, "subi") == 0) {
    ins_data.name = SUBI;
    if (!sscanf(strtok(NULL, " \t\n,"), "r%d", ins_data.op1) || sscanf(strtok(NULL, " \t\n,"), "r%d", ins_data.op2) || sscanf(strtok(NULL, " \t\n,"), "$%d", ins_data.op3))
      parse_error(pc, buf);
  }
  if (strcmp(tp, "add") == 0) {
    ins_data.name = ADD;
    if (!sscanf(strtok(NULL, " \t\n,"), "r%d", ins_data.op1) || sscanf(strtok(NULL, " \t\n,"), "r%d", ins_data.op2) || sscanf(strtok(NULL, " \t\n,"), "r%d", ins_data.op3))
      parse_error(pc, buf);
  }

  ins_data.name = ins_name_num(tp);
  if (ins_name_num(tp) == ADD)
  tp = strtok(buf, " \t\n,");
  sscanf(tp, )
  return tp;
}

Ins_array parser(FILE *fp, char* op0, char* op1, char* op2, char* op3) {
  Ins_array ia = init_array();
  int pc;
  char buf[BUF_SIZE];
  for (int line = 0; fets(buf, BUF_SIZE, fp); i++) {
    ia[line] = init_insp();
    ia[line]
  }
  for (pc = 0; pc < SIZE, pc++) {
    if (fgets(buf, 200, fp) == NULL)
      break;
    else

  }
  return ia;
}


int main() {
  FILE *fp = fopen(argv[1], "r");
  Ins_array ins_array = paeser(fp, );
}
