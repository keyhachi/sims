#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/time.h>

int gr[32];
double fr[32];
int mem[4096];
int pc = 0;
int cr = 0;
int labels[1000];
int i = 0;
int j = 0;
int k = 0;
char allins[1000][100];
char a0[1000][20];
char a1[1000][20];
char a2[1000][20];
char a3[1000][20];
int b0[1000];
int b1[1000];
int b2[1000];
int b3[1000];
char start[20] = "main";
int global_heap = 0;
struct timeval tv;
int t0, t1, ts0, ts1;
int g;
unsigned int tmp, tmp2;
int insnum = 0;

// allinsから指定のlabel探索


int label_to_hash(char *label) {
  int hashval = 0;
  while (*label != '\0')
    hashval += *label++;
  return hashval % 1000;
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
  else if (strcmp(a0p, "ret") == 0) {
      b0[pc] = 21;
      return 0;
  }
  else if (a0p[0] == ';') {
    b0[pc] = 22;
    return 0;
}
  else {
    labels[label_to_hash(a0p)] = pc;
    b0[pc] = 22;
    return 0;
  }
  return 0;
}




int main(int argc, char* argv[]) {
    FILE *fd = fopen(argv[1], "r");

    for (i = 0; i < 16; i++)
        gr[i] = 0;
    for (i = 0; i < 16; i++)
        fr[i] = 0.0;


    gr[0] = 1000;
    gr[10] = 0;
    gr[11] = 0;

    // memset(gr, 0, strlen(gr));
    // memset(order, '\0', strlen(order));
    // memset(a0, '\0', strlen(a0));
    // memset(a1, '\0', strlen(a1));
    // memset(a2, '\0', strlen(a2));
    // memset(a3, '\0', strlen(a3));
    // char **a = (char**)malloc(1000);

    for (i = 0; i < 1000; i++) {
        if (fgets(allins[i], 100, fd) == NULL)
            break;
        else
          insnum += 1;
            // printf("%s", allallins[pc][i]);
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
            for (j = 0; j < 100; j++) {
                if (allins[i][j] == '\n') {
                    allins[i][j] = '\0';
                    break;
                }
            }
            printf("error! the intstruction [%s] is different from [%s] of ISA.\n", allins[i], a0[i]);
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
        gr[b1[pc]] = mem[gr[b2[pc]] + b3[pc]/4];
        pc += 1;
        break;

        case 16:
        mem[gr[b2[pc]] + b3[pc]/4] = gr[b1[pc]];
        pc += 1;
        break;

        case 17:
        pc = labels[label_to_hash(a1[pc])];
        break;

        case 18:
        pc = gr[b1[pc]];
        break;

        case 19:
        if (gr[b1[pc]] == gr[b2[pc]])
            pc = labels[label_to_hash(a3[pc])];
        else
            pc += 1;
        break;

        case 20:
        if (gr[b1[pc]] != gr[b2[pc]])
            pc = labels[label_to_hash(a3[pc])];
        else
            pc += 1;
        break;

        case 21:
        printf("return %d\n", gr[b1[pc - 1]]);
        return gr[b1[pc - 1]];
        break;

        case 22:
        pc += 1;
        break;
    }

        k += 1;
        if (k > 1e8) {
            gettimeofday(&tv, NULL);
            ts1 = tv.tv_sec;
            t1 = tv.tv_usec;
            printf("%d %d\n", ts1 - ts0, t1 - t0);
            break;
        }
    }
}
