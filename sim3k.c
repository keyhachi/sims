#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/time.h>
#include <sys/mman.h>
#include <math.h>


int gr[32];
int lr;
float fr[32];
int heap[1000000];
// int* stack;
int stack[1000000];
int pc = 0;
int cr = 0;
int labels[1000000];
int i = 0;
int j = 0;
int k = 0;
char allins[1000000][1000];
char a0[1000000][256];
char a1[1000000][256];
char a2[1000000][256];
char a3[1000000][256];
int b0[1000000];
int b1[1000000];
int b2[1000000];
int b3[1000000];
float f[1000000];
char start[20] = "main";
int global_heap = 0;
struct timeval tv;
int t0, t1, ts0, ts1;
int g;
unsigned int tmp, tmp2;
int insnum = 0;

// allinsから指定のlabel探索

//labelの後の数字をハッシュ値に
int label_to_hash(char *label) {
  int hashval = 0;
  int i = 0;
  while (label[i] != '\0') {
    hashval = hashval * 200293 + label[i];
    i += 1;
  }
  return (hashval % 1000000 + 1000000) % 1000000;
}

int label_q(char* a) {
  int i;
  for (i = 0; i < 100; i++) {
    if (a[i] == ':') {
      return 0;
      break;
    }
  }
  if (i == 100)
    return -1;
  else
    return 0;
}


int grammer_check(char* a0p, char* a1p, char* a2p, char* a3p, int pc, int* b0, int* b1, int* b2, int* b3) {
  int i;

  if (strcmp(a0p, "add") == 0) {
    if (a1p[0] != 'r' || a2p[0] != 'r' || a3p[0] != 'r')
      return -1;
    else {
      b0[pc] = 2;
      b1[pc] = atoi(&a1p[1]);
      b2[pc] = atoi(&a2p[1]);
      b3[pc] = atoi(&a3p[1]);
      return 0;
    }
  }
  else if (strcmp(a0p, "addi") == 0) {
    if (a1p[0] != 'r' || a2p[0] != 'r' || a3p[0] != '$')
      return -1;
    else {
      b0[pc] = 3;
      b1[pc] = atoi(&a1p[1]);
      b2[pc] = atoi(&a2p[1]);
      b3[pc] = atoi(&a3p[1]);
      return 0;
    }
  }
  else if (strcmp(a0p, "sub") == 0) {
    if (a1p[0] != 'r' || a2p[0] != 'r' || a3p[0] != 'r')
      return -1;
    else {
      b0[pc] = 4;
      b1[pc] = atoi(&a1p[1]);
      b2[pc] = atoi(&a2p[1]);
      b3[pc] = atoi(&a3p[1]);
      return 0;
    }
  }
  else if (strcmp(a0p, "subi") == 0) {
    if (a1p[0] != 'r' || a2p[0] != 'r' || a3p[0] != '$')
      return -1;
    else {
      b0[pc] = 5;
      b1[pc] = atoi(&a1p[1]);
      b2[pc] = atoi(&a2p[1]);
      b3[pc] = atoi(&a3p[1]);
      return 0;
    }
  }
  else if (strcmp(a0p, "and") == 0) {
    if (a1p[0] != 'r' || a2p[0] != 'r' || a3p[0] != 'r')
      return -1;
    else {
      b0[pc] = 6;
      b1[pc] = atoi(&a1p[1]);
      b2[pc] = atoi(&a2p[1]);
      b3[pc] = atoi(&a3p[1]);
      return 0;
    }
  }
  else if (strcmp(a0p, "andi") == 0) {
    if (a1p[0] != 'r' || a2p[0] != 'r' || a3p[0] != '$')
      return -1;
    else {
      b0[pc] = 7;
      b1[pc] = atoi(&a1p[1]);
      b2[pc] = atoi(&a2p[1]);
      b3[pc] = atoi(&a3p[1]);
      return 0;
    }
  }
  else if (strcmp(a0p, "mov") == 0) {
    if (a1p[0] != 'r' || a2p[0] != 'r')
      return -1;
    else {
      b0[pc] = 1;
      b1[pc] = atoi(&a1p[1]);
      b2[pc] = atoi(&a2p[1]);
      return 0;
    }
  }
  else if (strcmp(a0p, "or") == 0) {
    if (a1p[0] != 'r' || a2p[0] != 'r' || a3p[0] != 'r')
      return -1;
    else {
      b0[pc] = 8;
      b1[pc] = atoi(&a1p[1]);
      b2[pc] = atoi(&a2p[1]);
      b3[pc] = atoi(&a3p[1]);
      return 0;
    }
  }
  else if (strcmp(a0p, "ori") == 0) {
    if (a1p[0] != 'r' || a2p[0] != 'r' || a3p[0] != '$')
      return -1;
    else {
      b0[pc] = 9;
      b1[pc] = atoi(&a1p[1]);
      b2[pc] = atoi(&a2p[1]);
      b3[pc] = atoi(&a3p[1]);
      return 0;
    }
  }
  else if (strcmp(a0p, "xor") == 0) {
    if (a1p[0] != 'r' || a2p[0] != 'r' || a3p[0] != 'r')
      return -1;
    else {
      b0[pc] = 10;
      b1[pc] = atoi(&a1p[1]);
      b2[pc] = atoi(&a2p[1]);
      b3[pc] = atoi(&a3p[1]);
      return 0;
    }
  }
  else if (strcmp(a0p, "nor") == 0) {
    if (a1p[0] != 'r' || a2p[0] != 'r' || a3p[0] != 'r')
      return -1;
    else {
      b0[pc] = 11;
      b1[pc] = atoi(&a1p[1]);
      b2[pc] = atoi(&a2p[1]);
      b3[pc] = atoi(&a3p[1]);
      return 0;
    }
  }
  else if (strcmp(a0p, "sll") == 0) {
    if (a1p[0] != 'r' || a2p[0] != 'r' || a3p[0] != '$')
      return -1;
    else {
      b0[pc] = 12;
      b1[pc] = atoi(&a1p[1]);
      b2[pc] = atoi(&a2p[1]);
      b3[pc] = atoi(&a3p[1]);
      return 0;
    }
  }
  else if (strcmp(a0p, "srl") == 0) {
    if (a1p[0] != 'r' || a2p[0] != 'r' || a3p[0] != '$')
      return -1;
    else {
      b0[pc] = 13;
      b1[pc] = atoi(&a1p[1]);
      b2[pc] = atoi(&a2p[1]);
      b3[pc] = atoi(&a3p[1]);
      return 0;
    }
  }
  else if (strcmp(a0p, "sra") == 0) {
    if (a1p[0] != 'r' || a2p[0] != 'r' || a3p[0] != '$')
      return -1;
    else {
      b0[pc] = 14;
      b1[pc] = atoi(&a1p[1]);
      b2[pc] = atoi(&a2p[1]);
      b3[pc] = atoi(&a3p[1]);
      return 0;
    }
  }
  else if (strcmp(a0p, "lw") == 0) {
    if (a1p[0] != 'r' || a2p[0] != 'r' || a3p[0] != '$')
      return -1;
    else {
      b0[pc] = 15;
      b1[pc] = atoi(&a1p[1]);
      b2[pc] = atoi(&a2p[1]);
      b3[pc] = atoi(&a3p[1]);
      return 0;
    }
  }
  else if (strcmp(a0p, "sw") == 0) {
    if (a1p[0] != 'r' || a2p[0] != 'r' || a3p[0] != '$')
      return -1;
    else {
      b0[pc] = 16;
      b1[pc] = atoi(&a1p[1]);
      b2[pc] = atoi(&a2p[1]);
      b3[pc] = atoi(&a3p[1]);
      return 0;
    }
  }
  else if (strcmp(a0p, "j") == 0) {
    b0[pc] = 17;
    return 0;
  }
  else if (strcmp(a0p, "jr") == 0) {
    if (a1p[0] != 'r')
      return -1;
    else
      b0[pc] = 18;
      b1[pc] = atoi(&a1p[1]);
  }
  else if (strcmp(a0p, "beq") == 0) {
    if (a1p[0] != 'r' || a2p[0] != 'r')
      return -1;
    else {
      b0[pc] = 19;
      b1[pc] = atoi(&a1p[1]);
      b2[pc] = atoi(&a2p[1]);
      return 0;
    }
  }
  else if (strcmp(a0p, "bne") == 0) {
    if (a1p[0] != 'r' || a2p[0] != 'r')
      return -1;
    else {
      b0[pc] = 20;
      b1[pc] = atoi(&a1p[1]);
      b2[pc] = atoi(&a2p[1]);
      return 0;
    }
  }
  else if (strncmp(a0p, "ret", 3) == 0) {
      b0[pc] = 21;
      return 0;
  }
  else if (strcmp(a0p, "push") == 0) {
    if (a1p[0] == 'r'){
        b0[pc] = 23;
        b1[pc] = atoi(&a1p[1]);
        return 0;
    }
    else
      return -1;
    }
else if (strcmp(a0p, "pop") == 0) {
    if (a1p[0] != 'r')
        return -1;
    else {
        b0[pc] = 24;
        b1[pc] = atoi(&a1p[1]);
        return 0;
    }
}
else if (strcmp(a0p, "li") == 0) {
    if (a2p[0] == '$') {
        b0[pc] = 25;
        b1[pc] = atoi(&a1p[1]);
        b2[pc] = atoi(&a2p[1]);
        return 0;
    }
    else
        b0[pc] = 26;
        b1[pc] = atoi(&a1p[1]);
        return 0;
}
else if (strcmp(a0p, "jal") == 0) {
  if (a1p[0] == '$') {
    b0[pc] = 27;
    b1[pc] = atoi(&a1p[pc]);
    return 0;
  }
  // else if (strcmp(a1p, "print_int") == 0) {
  //   b0[pc] = 40;
  //   return 0;
  // }
  else if (strcmp(a1p, "print_char") == 0) {
    b0[pc] = 41;
    return 0;
  }
  else if (strcmp(a1p, "read_int") == 0) {
    b0[pc] = 50;
    return 0;
  }
  else if (strcmp(a1p, "read_float") == 0) {
    b0[pc] = 51;
    return 0;
  }
  // else if (a1p[0] == 'f' && a1p[1] == 'l' && a1p[2] == 'e') {
  //   b0[pc] = 42;
  //   return 0;
  // }
  else {
    b0[pc] = 30;
    b1[pc] = atoi(&a1p[pc]);
    return 0;
  }
}
else if (strcmp(a0p, "jalr") == 0) {
  if (a1p[0] != 'r')
    return -1;
  else {
    b0[pc] = 28;
    b1[pc] = atoi(&a1p[1]);
    return 0;
  }
}
else if (strcmp(a0p, "mflr") == 0) {
  if (a1p[0] != 'r')
    return -1;
  else {
    b0[pc] = 29;
    b1[pc] = atoi(&a1p[1]);
    return 0;
  }
}
else if (strcmp(a0p, "itof") == 0) {
  if (a1p[0] != 'f' || a2p[0] != 'r')
    return -1;
  else {
    b0[pc] = 31;
    b1[pc] = atoi(&a1p[1]);
    b2[pc] = atoi(&a2p[1]);
    return 0;
  }
}
else if (strcmp(a0p, "ftoi") == 0) {
  if (a1p[0] != 'r' || a2p[0] != 'f')
    return -1;
  else {
    b0[pc] = 32;
    b1[pc] = atoi(&a1p[1]);
    b2[pc] = atoi(&a2p[1]);
    return 0;
  }
}
else if (strcmp(a0p, "fst") == 0) {
  if (a1p[0] != 'f' || a2p[0] != 'r' || a3p[0] != '$')
    return -1;
  else {
    b0[pc] = 33;
    b1[pc] = atoi(&a1p[1]);
    b2[pc] = atoi(&a2p[1]);
    b3[pc] = atoi(&a3p[1]);
    return 0;
  }
}
else if (strcmp(a0p, "fld") == 0) {
  if (a1p[0] != 'f' || a2p[0] != 'r' || a3p[0] != '$')
    return -1;
  else {
    b0[pc] = 34;
    b1[pc] = atoi(&a1p[1]);
    b2[pc] = atoi(&a2p[1]);
    b3[pc] = atoi(&a3p[1]);
    return 0;
  }
}
else if (strcmp(a0p, "fadd") == 0) {
  if (a1p[0] != 'f' || a2p[0] != 'f' || a3p[0] != 'f')
    return -1;
  else {
    b0[pc] = 35;
    b1[pc] = atoi(&a1p[1]);
    b2[pc] = atoi(&a2p[1]);
    b3[pc] = atoi(&a3p[1]);
    return 0;
  }
}
else if (strcmp(a0p, "fsub") == 0) {
  if (a1p[0] != 'f' || a2p[0] != 'f' || a3p[0] != 'f')
    return -1;
  else {
    b0[pc] = 36;
    b1[pc] = atoi(&a1p[1]);
    b2[pc] = atoi(&a2p[1]);
    b3[pc] = atoi(&a3p[1]);
    return 0;
  }
}
else if (strcmp(a0p, "fmul") == 0) {
  if (a1p[0] != 'f' || a2p[0] != 'f' || a3p[0] != 'f')
    return -1;
  else {
    b0[pc] = 37;
    b1[pc] = atoi(&a1p[1]);
    b2[pc] = atoi(&a2p[1]);
    b3[pc] = atoi(&a3p[1]);
    return 0;
  }
}
else if (strcmp(a0p, "fdiv") == 0) {
  if (a1p[0] != 'f' || a2p[0] != 'f' || a3p[0] != 'f')
    return -1;
  else {
    b0[pc] = 38;
    b1[pc] = atoi(&a1p[1]);
    b2[pc] = atoi(&a2p[1]);
    b3[pc] = atoi(&a3p[1]);
    return 0;
  }
}
else if (strcmp(a0p, "fmovi") == 0) {
  if (a1p[0] != 'f' || a2p[0] != '$')
    return -1;
  else {
    b0[pc] = 39;
    b1[pc] = atoi(&a1p[1]);
    f[pc] = atof(&a2p[1]);
    return 0;
  }
}
else if (strcmp(a0p, "slt") == 0) {
  if (a1p[0] != 'r' || a2p[0] != 'r' || a3p[0] != 'r')
    return -1;
  else {
    b0[pc] = 43;
    b1[pc] = atoi(&a1p[1]);
    b2[pc] = atoi(&a2p[1]);
    b3[pc] = atoi(&a3p[1]);
    return 0;
  }
}
else if (strcmp(a0p, "slti") == 0) {
  if (a1p[0] != 'r' || a2p[0] != 'r' || a3p[0] != '$')
    return -1;
  else {
    b0[pc] = 44;
    b1[pc] = atoi(&a1p[1]);
    b2[pc] = atoi(&a2p[1]);
    b3[pc] = atoi(&a3p[1]);
    return 0;
  }
}
else if (strcmp(a0p, "seq") == 0) {
  if (a1p[0] != 'r' || a2p[0] != 'r' || a3p[0] != 'r')
    return -1;
  else {
    b0[pc] = 53;
    b1[pc] = atoi(&a1p[1]);
    b2[pc] = atoi(&a2p[1]);
    b3[pc] = atoi(&a3p[1]);
    return 0;
  }
}
else if (strcmp(a0p, "fsqrt") == 0) {
  if (a1p[0] != 'f' || a2p[0] != 'f')
    return -1;
  else {
    b0[pc] = 45;
    b1[pc] = atoi(&a1p[1]);
    b2[pc] = atoi(&a2p[1]);
    return 0;
  }
}
else if (strcmp(a0p, "flt") == 0) {
  if (a1p[0] != 'f' || a2p[0] != 'f')
    return -1;
  else {
    b0[pc] = 46;
    b1[pc] = atoi(&a1p[1]);
    b2[pc] = atoi(&a2p[1]);
    return 0;
  }
}
else if (strcmp(a0p, "feq") == 0) {
  if (a1p[0] != 'f' || a2p[0] != 'f')
    return -1;
  else {
    b0[pc] = 47;
    b1[pc] = atoi(&a1p[1]);
    b2[pc] = atoi(&a2p[1]);
    return 0;
  }
}
else if (strcmp(a0p, "bft") == 0) {
    b0[pc] = 48;
    return 0;
}
else if (strcmp(a0p, "bff") == 0) {
    b0[pc] = 49;
    return 0;
}
else if (strcmp(a0p, "hlt") == 0) {
  b0[pc] = 52;
  return 0;
}
  else if (a0p[0] == ';') {
    b0[pc] = 22;
    return 0;
}
  else {
    // printf("addr!!!!!!!!!!!!!!!!!:%p\t%p\n", );
    labels[label_to_hash(a0p)] = pc;
    // printf("%s\n%d\n%d\n%d\n", a0p,label_to_hash(a0p), labels[label_to_hash(a0p)], pc);
    // fflush(stdout);
    // printf("%d %d %s\n", strcmp(a0p, "ret"), pc, a0p);
    b0[pc] = 22;
    return 0;
  }
  return 0;
}




int main(int argc, char* argv[]) {
    FILE *fd = fopen(argv[1], "r");
    // stack = mmap(NULL, 0x10000, PROT_READ | PROT_WRITE, MAP_STACK, 0, 0);

    for (i = 0; i < 32; i++)
        gr[i] = 0;
    for (i = 0; i < 32; i++)
        fr[i] = 0.0;


    gr[1] = (int)(stack + sizeof(stack)/4 - 4);
    gr[3] = (int)heap;
    lr = -1;
    // memset(gr, 0, strlen(gr));
    // memset(order, '\0', strlen(order));
    // memset(a0, '\0', strlen(a0));
    // memset(a1, '\0', strlen(a1));
    // memset(a2, '\0', strlen(a2));
    // memset(a3, '\0', strlen(a3));
    // char **a = (char**)malloc(1000);

    for (i = 0; i < 100000; i++) {
        if (fgets(allins[i], 200, fd) == NULL)
            break;
        else
          insnum += 1;
            // printf("%s", allins[i]);
    }

    gettimeofday(&tv, NULL);
    ts0 = tv.tv_sec;
    t0 = tv.tv_usec;


        // 1orderの読み込み
        // printf("%s%s", allins[pc], order);

        // parse: add r1, r2, r3とかをa0 = add, a1 = r1, a2 = r2, a3 = r3にする
        // parse to a0
        i = 0;

        for (pc = 0; pc < insnum; pc++) {
        while (1) {
            if ((allins[pc][i] == ' ' || allins[pc][i] == ',' || allins[pc][i] == '\n' || allins[pc][i] == '\0' || allins[pc][i] == ':') && j != 0) {
                a0[pc][j] = '\0';
                i += 1;
                j = 0;
                break;
            }
            else if ((allins[pc][i] == ' ' || allins[pc][i] == '\t') && j == 0) {
                i += 1;
            }
            else {
                a0[pc][j] = allins[pc][i];
                i += 1;
                j += 1;
            }
        }

        // printf("%s", order);
        // printf("%s\n", a0);
        // printf("%d %d\n", i, j);

        // parse to a1
        while (1) {
            if ((allins[pc][i] == ' ' || allins[pc][i] == ',' || allins[pc][i] == '\n' || allins[pc][i] == '\0' || allins[pc][i] == ']' || allins[pc][i] == '[' || allins[pc][i] == ':') && j != 0) {
                a1[pc][j] = '\0';
                i += 1;
                j = 0;
                break;
            }
            else if ((allins[pc][i] == ' ' || allins[pc][i] == '\t') && j == 0) {
                i += 1;
            }
            // else if ((allins[pc][i] == '+' || allins[pc][i] == '-') && j != 0) {
            //     a1[j] = '\0';
            //     j = 0;
            //     break;
            // }
            else {
                a1[pc][j] = allins[pc][i];
                  // printf("%c\n", a1[pc][j]);
                i += 1;
                j += 1;
            }
        }

        // parse to a2
        while (1) {
            if ((allins[pc][i] == ' ' || allins[pc][i] == ',' || allins[pc][i] == '\n' || allins[pc][i] == '\0' || allins[pc][i] == ']' || allins[pc][i] == '[' || allins[pc][i] == ':') && j != 0) {
                a2[pc][j] = '\0';
                // printf("%d %d\n", i, j);
                i += 1;
                j = 0;
                break;
            }
            else if ((allins[pc][i] == ' ' || allins[pc][i] == '\t') && j == 0) {
                i += 1;
            }
            // else if ((allins[pc][i] == '+' || allins[pc][i] == '-') && j != 0) {
            //     a1[j] = '\0';
            //     j = 0;
            //     break;
            // }
            else {
                // printf("%c\n", order)
                a2[pc][j] = allins[pc][i];
                i += 1;
                j += 1;
            }
        }

        // parse to a3
        while (1) {
            if ((allins[pc][i] == ' ' || allins[pc][i] == ',' || allins[pc][i] == '\n' || allins[pc][i] == '\0' || allins[pc][i] == ']' || allins[pc][i] == '[' || allins[pc][i] == ':') && j != 0) {
                a3[pc][j] = '\0';
                // printf("%d %d\n", i, j);
                i = 0;
                j = 0;
                break;
            }
            else if ((allins[pc][i] == ' ' || allins[pc][i] == '\t') && j == 0) {
                i += 1;
            }
            // else if ((allins[pc][i] == '+' || allins[pc][i] == '-') && j != 0) {
            //     a1[j] = '\0';
            //     j = 0;
            //     break;
            // }
            else {
                // printf("%c\n", order)
                a3[pc][j] = allins[pc][i];
                i += 1;
                j += 1;
            }
        }
    }
        //parse終了

        for (i = 0; i < insnum; i++) {
          g = grammer_check(a0[i], a1[i], a2[i], a3[i], i, b0, b1, b2, b3);
        if (g == -1) {
            // for (j = 0; j < 100; j++) {
            //     if (allins[i][j] == '\n') {
            //         allins[i][j] = '\0';
            //         break;
            //     }
            // }
            printf("line %d error! the intstruction \n%s \nis different from [%s] of ISA.\n", i, allins[i], a0[i]);
            return 0;
        }
    }
        pc = labels[label_to_hash(start)];
        // printf("%s", allins[pc]);
        // printf("%d\n", pc);
        // printf("%s\n", a0[pc]);
        // printf("%s\n", a1[pc]);
        // printf("%s\n", a2[pc]);
        // printf("%s\n\n", a3[pc]);

    while(1) {
        //実行
      //   if (1) {
      //   printf("r1 = %x r2 = %x r3 = %x r4 = %x\nr5 = %x r6 = %x r7 = %x r8 = %x r31 = %x\n", gr[1], gr[2], gr[3], gr[4], gr[5], gr[6], gr[7], gr[8], gr[31]);
      //   printf("f0 = %f f1 = %f f2 = %f f3 = %f f4 = %f\n", fr[0], fr[1], fr[2], fr[3], fr[4]);
      //   printf("gr = %p heap = %p stack = %p\n", gr, heap, stack);
      //   for (i = 0; i < 10; i++)
      //     printf("gr[1][%d] = %x %f\n",i,((int*)gr[1])[i],((float*)gr[1])[i]);
      //   printf("b1[pc] = %d b2[pc] = %d b3[pc] = %d\n", b1[pc], b2[pc], b3[pc]);
      //   printf("ins = %d  pc = %d\n", b0[pc], pc);
      //   printf("-----------------------------------------------------------------\n");
      //   fflush(stdout);
      //  }
        switch (b0[pc]) {

        case 1:
        gr[b1[pc]] = gr[b2[pc]];
        pc += 1;
        break;

        case 2:
        gr[b1[pc]] = gr[b2[pc]] + gr[b3[pc]];
        pc += 1;
        break;

        case 3:
        gr[b1[pc]] = gr[b2[pc]] + b3[pc];
        pc += 1;
        break;

        case 4:
        gr[b1[pc]] = gr[b2[pc]] - gr[b3[pc]];
        pc += 1;
        break;

        case 5:
        gr[b1[pc]] = gr[b2[pc]] - b3[pc];
        pc += 1;
        break;

        case 6:
        gr[b1[pc]] = gr[b2[pc]] & gr[b3[pc]];
        pc += 1;
        break;

        case 7:
        gr[b1[pc]] = gr[b2[pc]] & b3[pc];
        pc += 1;
        break;

        case 8:
        gr[b1[pc]] = gr[b2[pc]] | gr[b3[pc]];
        pc += 1;
        break;

        case 9:
        gr[b1[pc]] = gr[b2[pc]] | b3[pc];
        pc += 1;
        break;

        case 10:
        gr[b1[pc]] = gr[b2[pc]] ^ gr[b3[pc]];
        pc += 1;
        break;

        case 11:
        gr[b1[pc]] = ~(gr[b2[pc]] | gr[b3[pc]]);
        pc += 1;
        break;

        case 12:
        tmp = (unsigned int)gr[b2[pc]];
        tmp2 = tmp << b3[pc];
        gr[b1[pc]] = (int)tmp2;
        pc += 1;
        break;

        case 13:
        tmp = (unsigned int)gr[b2[pc]];
        tmp2 = tmp >> b3[pc];
        gr[b1[pc]] = (int)tmp2;
        pc += 1;
        break;

        case 14:
        gr[b1[pc]] = gr[b2[pc]] >> b3[pc];
        pc += 1;
        break;

        case 15:
        // printf("%d\n", *(int*)(gr[b2[pc]] + b3[pc]));
        gr[b1[pc]] = *(int*)(gr[b2[pc]] + b3[pc]);
        pc += 1;
        break;

        case 16:
        // printf("%x\n", *(int*)(gr[b2[pc]] + b3[pc]));
        // fflush(stdout);
        *(int*)(gr[b2[pc]] + b3[pc]) = gr[b1[pc]];
        pc += 1;
        break;

        case 17:
        // printf("%s\n%d\n", a1[pc], label_to_hash(a1[pc]));
        pc = labels[label_to_hash(a1[pc])];
        break;

        case 18:
        // printf("%d\n", gr[b1[pc]]);
        pc = gr[b1[pc]];
        break;

        case 19:
        if (gr[b1[pc]] == gr[b2[pc]])
            pc = labels[label_to_hash(a3[pc])];
        else
            pc += 1;
        break;

        case 20:
         if (gr[b1[pc]] != gr[b2[pc]]) {
            // printf("%s\n%d\n%d\n", a3[pc], labels[label_to_hash(a3[pc])], labels[label_to_hash(a3[pc]) - 13]);
            pc = labels[label_to_hash(a3[pc])];
          }
        else
            pc += 1;
        break;

        case 21:
        pc = lr;
        if (lr == -1) {
              printf("%d\n", k);
          return 0;
        }
        break;

        case 22:
        pc += 1;
        break;

        case 23:
        gr[1] = gr[1] - 4;
        *(int*)gr[1] = gr[b1[pc]];
        pc += 1;
        break;

        case 24:
        gr[b1[pc]] = *(int*)gr[1];
        gr[1] = gr[1] + 4;
        pc += 1;
        break;

        case 25:
        gr[b1[pc]] = b2[pc];
        pc += 1;
        break;

        case 26:
        gr[b1[pc]] = labels[label_to_hash(a2[pc])];
        pc += 1;
        break;

        case 27:
        lr = pc + 1;
        pc = b1[pc];
        break;

        case 28:
        lr = pc + 1;
        pc = gr[b1[pc]];
        break;

        case 29:
        gr[b1[pc]] = lr;
        pc += 1;
        break;

        case 30:
        lr = pc + 1;
        // printf("%s\n%d\n%d\n", a1[pc], labels[label_to_hash(a1[pc])], labels[label_to_hash(a1[pc]) - 13]);
        pc = labels[label_to_hash(a1[pc])];
        break;

        case 31:
        fr[b1[pc]] = (float)gr[b2[pc]];
        pc += 1;
        break;

        case 32:
        gr[b1[pc]] = (int)fr[b2[pc]];
        pc += 1;
        break;

        case 33:
        // printf("x: %p\n",*(void**)(gr[b2[pc]] + b3[pc]+4));
        *(float*)(gr[b2[pc]] + b3[pc]) = fr[b1[pc]];
        // printf("x: %p\n",*(void**)(gr[b2[pc]] + b3[pc]+4));
        pc += 1;
        break;

        case 34:
        fr[b1[pc]] = *(float*)(gr[b2[pc]] + b3[pc]);
        pc += 1;
        break;

        case 35:
        fr[b1[pc]] = fr[b2[pc]] + fr[b3[pc]];
        pc += 1;
        break;

        case 36:
        fr[b1[pc]] = fr[b2[pc]] - fr[b3[pc]];
        pc += 1;
        break;

        case 37:
        // printf("%f\n%f\n%f\n", fr[b1[pc]], fr[b2[pc]], fr[b3[pc]]);
        fr[b1[pc]] = fr[b2[pc]] * fr[b3[pc]];
        // printf("%f\n%f\n%f\n", fr[b1[pc]], fr[b2[pc]], fr[b3[pc]]);
        pc += 1;
        break;

        case 38:
        fr[b1[pc]] = fr[b2[pc]] / fr[b3[pc]];
        pc += 1;
        break;

        case 39:
        fr[b1[pc]] = f[pc];
        pc += 1;
        break;

        case 40:
        printf("%d", *(int*)gr[1]);
        pc += 1;
        break;

        case 41:
        printf("%c", *(char*)gr[1]);
        pc += 1;
        break;

        case 42:
        // printf("f: %f\n",*(float*)gr[1]);
        if (*(float*)gr[1] < *(float*)(gr[1] + 4))
          gr[5] = 1;
        else
          gr[5] = 0;
	      pc += 1;
        break;

        case 43:
        if (gr[b2[pc]] < gr[b3[pc]])
          gr[b1[pc]] = 1;
        else
          gr[b1[pc]] = 0;
	      pc += 1;
        break;

        case 44:
        if (gr[b2[pc]] < b3[pc])
          gr[b1[pc]] = 1;
        else
          gr[b1[pc]] = 0;
	      pc += 1;
        break;

        case 45:
        fr[b1[pc]] = sqrtf(fr[b2[pc]]);
        pc += 1;
        break;

        case 46:
        if (fr[b1[pc]] < fr[b2[pc]])
          cr = 1;
        else
          cr = 0;
        pc += 1;
        break;

        case 47:
        if (fr[b1[pc]] == fr[b2[pc]])
          cr = 1;
        else
          cr = 0;
        pc += 1;
        break;

        case 48:
        if (cr == 1)
          pc = labels[label_to_hash(a1[pc])];
        else
          pc += 1;
        break;

        case 49:
        if (cr == 0)
          pc = labels[label_to_hash(a1[pc])];
        else
          pc += 1;
        break;

        case 50:
        scanf("%d", &gr[5]);
        pc += 1;
        break;

        case 51:
        scanf("%f", &gr[5]);
        pc += 1;
        break;

        case 52:
        return 0;
        break;

        case 53:
        if (gr[b2[pc]] == gr[b3[pc]])
          gr[b1[pc]] = 1;
        else
          gr[b1[pc]] = 0;
	      pc += 1;
        break;


    }
        if (pc == -1) {
    // printf("%d\n", k);
           return 0;
           break;
         }
        gr[0] = 0;
        k += 1;
        // if (k > 1e8) {
        //     gettimeofday(&tv, NULL);
        //     ts1 = tv.tv_sec;
        //     t1 = tv.tv_usec;
        //     printf("%d %d\n", ts1 - ts0, t1 - t0);
        //     break;
        // }
    }
    // printf("%d\n", k);
}
