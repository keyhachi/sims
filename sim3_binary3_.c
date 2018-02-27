#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/time.h>
#include <sys/mman.h>
#include <math.h>


int* gr;
int lr;
float* fr;
char mem_sub[1000000][1000];
int* mem;
char gomi[2][200];
// int heap[1000000];
// int* stack;
// int stack[1000000];
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
char a4[1000000][256];
char a5[1000000][256];
int b0[1000000];
int b1[1000000];
int b2[1000000];
int* b3;
float f[1000000];
char start[20] = "main";
int global_heap = 0;
struct timeval tv;
int t0, t1, ts0, ts1;
int g;
unsigned int tmp, tmp2;
int insnum = 0;
unsigned int buf = 0;
int buf_point = 0;


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


int grammer_check(char* a0p, char* a1p, char* a2p, char* a3p, char* a4p, char* a5p, int pc, int* b0, int* b1, int* b2, int* b3) {
  int i;
  int j;
  short k;
  char a345[17];
  char a12345[27];

  for (j = 0; j < 17; j++) {
    if (j < 5)
      a345[j] = a3p[j];
    else if (j < 10)
      a345[j] = a4p[j - 5];
    else if (j < 16)
      a345[j] = a5p[j - 10];
    else
      a345[j] = '\0';
  }

  for (j = 0; j < 27; j++) {
    if (j < 5)
      a12345[j] = a1p[j];
    else if (j < 10)
      a12345[j] = a2p[j - 5];
    else if (j < 26)
      a12345[j] = a345[j - 10];
    else
      a12345[j] = '\0';
  }

  if (strcmp(a0p, "000000") == 0) {

    if (strcmp(a5p, "100000") == 0) { //add
      b0[pc] = 2;
      b1[pc] = strtol(&a1p[0], NULL, 2);
      b2[pc] = strtol(&a2p[0], NULL, 2);
      b3[pc] = strtol(&a3p[0], NULL, 2);
      return 0;
    }
    else if (strcmp(a5p, "100010") == 0) { //sub
      b0[pc] = 4;
      b1[pc] = strtol(&a1p[0], NULL, 2);
      b2[pc] = strtol(&a2p[0], NULL, 2);
      b3[pc] = strtol(&a3p[0], NULL, 2);
      return 0;
    }
    else if (strcmp(a5p, "100100") == 0) { //and
      b0[pc] = 6;
      b1[pc] = strtol(&a1p[0], NULL, 2);
      b2[pc] = strtol(&a2p[0], NULL, 2);
      b3[pc] = strtol(&a3p[0], NULL, 2);
      return 0;
    }
    else if (strcmp(a5p, "100101") == 0) { //or
      b0[pc] = 8;
      b1[pc] = strtol(&a1p[0], NULL, 2);
      b2[pc] = strtol(&a2p[0], NULL, 2);
      b3[pc] = strtol(&a3p[0], NULL, 2);
      return 0;
    }
    else if (strcmp(a5p, "100110") == 0) { //xor
      b0[pc] = 10;
      b1[pc] = strtol(&a1p[0], NULL, 2);
      b2[pc] = strtol(&a2p[0], NULL, 2);
      b3[pc] = strtol(&a3p[0], NULL, 2);
      return 0;
    }
    else if (strcmp(a5p, "100111") == 0) { //nor
      b0[pc] = 11;
      b1[pc] = strtol(&a1p[0], NULL, 2);
      b2[pc] = strtol(&a2p[0], NULL, 2);
      b3[pc] = strtol(&a3p[0], NULL, 2);
      return 0;
    }
    else if (strcmp(a5p, "000000") == 0) { //sll
      b0[pc] = 12;
      b1[pc] = strtol(&a1p[0], NULL, 2);
      b2[pc] = strtol(&a2p[0], NULL, 2);
      b3[pc] = strtol(&a4p[0], NULL, 2);
      return 0;
    }
    else if (strcmp(a5p, "000010") == 0) { //srl
      b0[pc] = 13;
      b1[pc] = strtol(&a1p[0], NULL, 2);
      b2[pc] = strtol(&a2p[0], NULL, 2);
      b3[pc] = strtol(&a4p[0], NULL, 2);
      return 0;
    }
    else if (strcmp(a5p, "000011") == 0) { //sra
      b0[pc] = 14;
      b1[pc] = strtol(&a1p[0], NULL, 2);
      b2[pc] = strtol(&a2p[0], NULL, 2);
      b3[pc] = strtol(&a4p[0], NULL, 2);
      return 0;
    }
    else if (strcmp(a5p, "001000") == 0) { //jr
      b0[pc] = 18;
      b1[pc] = strtol(&a2p[0], NULL, 2);
      return 0;
    }
    else if (strcmp(a5p, "101010") == 0) { //slt
      b0[pc] = 43;
      b1[pc] = strtol(&a1p[0], NULL, 2);
      b2[pc] = strtol(&a2p[0], NULL, 2);
      b3[pc] = strtol(&a3p[0], NULL, 2);
      return 0;
    }
  }
  else if (strcmp(a0p, "001000") == 0){ //addi
    b0[pc] = 3;
    b1[pc] = strtol(&a1p[0], NULL, 2);
    b2[pc] = strtol(&a2p[0], NULL, 2);
    b3[pc] = (short)strtol(&a345[0], NULL, 2);
    // printf("\n\n%s %d %d\n\n", a345, k, b3[pc]);
    return 0;
  }
  else if (strcmp(a0p, "001100") == 0) { //andi
    b0[pc] = 7;
    b1[pc] = strtol(&a1p[0], NULL, 2);
    b2[pc] = strtol(&a2p[0], NULL, 2);
    b3[pc] = (short)strtol(&a345[0], NULL, 2);
    return 0;
  }
  else if (strcmp(a0p, "001101") == 0) { //ori
    b0[pc] = 9;
    b1[pc] = strtol(&a1p[0], NULL, 2);
    b2[pc] = strtol(&a2p[0], NULL, 2);
    b3[pc] = (short)strtol(&a345[0], NULL, 2);
    return 0;
  }
  else if (strcmp(a0p, "001111") == 0) { //lui
    b0[pc] = 25;
    b1[pc] = strtol(&a1p[0], NULL, 2);
    b2[pc] = (short)strtol(&a345[0], NULL, 2);
    return 0;
  }
  else if (strcmp(a0p, "100011") == 0) { //lw
    b0[pc] = 15;
    b1[pc] = strtol(&a1p[0], NULL, 2);
    b2[pc] = strtol(&a2p[0], NULL, 2);
    b3[pc] = (short)strtol(&a345[0], NULL, 2);
    return 0;
  }
  else if (strcmp(a0p, "101011") == 0) { //sw
    b0[pc] = 16;
    b1[pc] = strtol(&a1p[0], NULL, 2);
    b2[pc] = strtol(&a2p[0], NULL, 2);
    b3[pc] = (short)strtol(&a345[0], NULL, 2);
    return 0;
  }
  else if (strcmp(a0p, "000011") == 0) { //jal
    b0[pc] = 27;
    b1[pc] = strtol(&a12345[0], NULL, 2);
    return 0;
  }
  else if (strcmp(a0p, "111111") == 0) { //hlt
    b0[pc] = 52;
    return 0;
  }
  else if (strcmp(a0p, "000001") == 0) { //ret
    b0[pc] = 21;
    return 0;
  }
  else if (strcmp(a0p, "100010") == 0) { //mflr
    b0[pc] = 29;
    b1[pc] = strtol(&a1p[0], NULL, 2);
    return 0;
  }
  else if (strcmp(a0p, "000010") == 0) { //j
    b0[pc] = 17;
    b1[pc] = strtol(&a12345[0], NULL, 2);
    return 0;
  }
  else if (strcmp(a0p, "000100") == 0) { //beq
    b0[pc] = 19;
    b1[pc] = strtol(&a1p[0], NULL, 2);
    b2[pc] = strtol(&a2p[0], NULL, 2);
    b3[pc] = (short)strtol(&a345[0], NULL, 2);
    return 0;
  }
  else if (strcmp(a0p, "000101") == 0) { //bne
    b0[pc] = 20;
    b1[pc] = strtol(&a1p[0], NULL, 2);
    b2[pc] = strtol(&a2p[0], NULL, 2);
    b3[pc] = (short)strtol(&a345[0], NULL, 2);
    return 0;
  }
  else if (strcmp(a0p, "001010") == 0) { //slti
    b0[pc] = 44;
    b1[pc] = strtol(&a1p[0], NULL, 2);
    b2[pc] = strtol(&a2p[0], NULL, 2);
    b3[pc] = (short)strtol(&a345[0], NULL, 2);
    return 0;
  }
  //ここまでテスト済み
  else if (strcmp(a0p, "110001") == 0) { //fld
    b0[pc] = 34;
    b1[pc] = strtol(&a1p[0], NULL, 2);
    b2[pc] = strtol(&a2p[0], NULL, 2);
    b3[pc] = (short)strtol(&a345[0], NULL, 2);
    return 0;
  }
  else if (strcmp(a0p, "111001") == 0) { //fst
    b0[pc] = 33;
    b1[pc] = strtol(&a1p[0], NULL, 2);
    b2[pc] = strtol(&a2p[0], NULL, 2);
    b3[pc] = (short)strtol(&a345[0], NULL, 2);
    return 0;
  }
  else if (strcmp(a0p, "010000") == 0) { //rtof
    b0[pc] = 54;
    b1[pc] = strtol(&a1p[0], NULL, 2);
    b2[pc] = strtol(&a2p[0], NULL, 2);
    return 0;
  }
  else if (strcmp(a0p, "010010") == 0) { //ftor
    b0[pc] = 55;
    b1[pc] = strtol(&a1p[0], NULL, 2);
    b2[pc] = strtol(&a2p[0], NULL, 2);
    return 0;
  }
  else if (strcmp(a0p, "010011") == 0) { //bft
    b0[pc] = 48;
    b1[pc] = (short)strtol(&a345[0], NULL, 2);
    return 0;
  }
  else if (strcmp(a0p, "010111") == 0) { //bff
    b0[pc] = 49;
    b1[pc] = (short)strtol(&a345[0], NULL, 2);
    return 0;
  }
  else if (strcmp(a0p, "010001") == 0) {
    if (strcmp(a5p, "000110") == 0) { //fmov
      b0[pc] = 59;
      b1[pc] = strtol(&a1p[0], NULL, 2);
      b2[pc] = strtol(&a2p[0], NULL, 2);
      return 0;
    }
    else if (strcmp(a5p, "000000") == 0) { //fadd
      b0[pc] = 35;
      b1[pc] = strtol(&a1p[0], NULL, 2);
      b2[pc] = strtol(&a2p[0], NULL, 2);
      b3[pc] = strtol(&a3p[0], NULL, 2);
      return 0;
    }
    else if (strcmp(a5p, "000001") == 0) { //fsub
      b0[pc] = 36;
      b1[pc] = strtol(&a1p[0], NULL, 2);
      b2[pc] = strtol(&a2p[0], NULL, 2);
      b3[pc] = strtol(&a3p[0], NULL, 2);
      return 0;
    }
    else if (strcmp(a5p, "000010") == 0) { //fmul
      b0[pc] = 37;
      b1[pc] = strtol(&a1p[0], NULL, 2);
      b2[pc] = strtol(&a2p[0], NULL, 2);
      b3[pc] = strtol(&a3p[0], NULL, 2);
      return 0;
    }
    else if (strcmp(a5p, "000011") == 0) { //fdiv
      b0[pc] = 38;
      b1[pc] = strtol(&a1p[0], NULL, 2);
      b2[pc] = strtol(&a2p[0], NULL, 2);
      b3[pc] = strtol(&a3p[0], NULL, 2);
      return 0;
    }
    else if (strcmp(a5p, "000100") == 0) { //fsqrt
      b0[pc] = 45;
      b1[pc] = strtol(&a1p[0], NULL, 2);
      b2[pc] = strtol(&a2p[0], NULL, 2);
      return 0;
    }
    else if (strcmp(a5p, "110010") == 0) { //feq
      b0[pc] = 47;
      b1[pc] = strtol(&a2p[0], NULL, 2);
      b2[pc] = strtol(&a3p[0], NULL, 2);
      return 0;
    }
    else if (strcmp(a5p, "110100") == 0) { //flt
      b0[pc] = 46;
      b1[pc] = strtol(&a2p[0], NULL, 2);
      b2[pc] = strtol(&a3p[0], NULL, 2);
      return 0;
    }
    else if (strcmp(a5p, "100100") == 0) { //ftoi
      b0[pc] = 32;
      b1[pc] = strtol(&a1p[0], NULL, 2);
      b2[pc] = strtol(&a2p[0], NULL, 2);
      return 0;
    }
    else if (strcmp(a5p, "100000") == 0) { //itof
      b0[pc] = 31;
      b1[pc] = strtol(&a1p[0], NULL, 2);
      b2[pc] = strtol(&a2p[0], NULL, 2);
      return 0;
    }
  }
  else if (strcmp(a0p, "000110") == 0) { //ini
    if (a2p[0] == '0') { //ini
      b0[pc] = 56;
      b1[pc] = strtol(&a1p[0], NULL, 2);
      return 0;
    }
    else if (a2p[0] == '1') { //inf
      b0[pc] = 57;
      b1[pc] = strtol(&a1p[0], NULL, 2);
      return 0;
    }
  }
  else if (strcmp(a0p, "000111") == 0) { //out
    b0[pc] = 58;
    b1[pc] = strtol(&a1p[0], NULL, 2);
    return 0;
  }
  else if (a0p[0] == ';') {
    b0[pc] = 22;
    return -1;
}
  else {
    // printf("addr!!!!!!!!!!!!!!!!!:\n a0 = %s a1 = %s a2 = %s a3 = %s a4 = %s a5 = %s pc = %d\n", a0p,a1p,a2p,a3p,a4p,a5p,pc);
    labels[label_to_hash(a0p)] = pc;
    // printf("%s\n%d\n%d\n%d\n", a0p,label_to_hash(a0p), labels[label_to_hash(a0p)], pc);
    // fflush(stdout);
    // printf("%d %d %s\n", strcmp(a0p, "ret"), pc, a0p);
    b0[pc] = 22;
    return -1;
  }
  return 0;
}




int main(int argc, char* argv[]) {
    gr = malloc(32 * sizeof(int));
    fr = malloc(32 * sizeof(float));
    b3 = malloc(1000000 * sizeof(int));
    mem = malloc(1000000 * sizeof(int));
    FILE *fd = fopen(argv[1], "r");
    FILE *fd2 = fopen(argv[2], "r");
    char hima[17];
    char hima2[17];
    // stack = mmap(NULL, 0x10000, PROT_READ | PROT_WRITE, MAP_STACK, 0, 0);

    for (i = 0; i < 32; i++)
        gr[i] = 0;
    for (i = 0; i < 32; i++)
        fr[i] = 0.0;

    // int heap_fst_address = (int)mem;
    // gr[3] = 0x0;
    // gr[1] = 0x70000 - 0x4;
    // gr[1] = (int)(stack + sizeof(stack)/4 - 4);
    // gr[3] = (int)heap;
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


    //memに即値領域作成
    for (i = 0; i < 200000; i++) {
      if (i < 114690) {
        fgets(gomi[0], 200, fd2);
      }
      else if (fgets(mem_sub[0x70000 / 4 + i - 114690], 200, fd2) == NULL)
        break;
      else {
        for (j = 0; j < 17; j++) {
          if (j == 16) {
            hima[j] = '\0';
            hima2[j] = '\0';
          }
          else {
            hima[j] = mem_sub[0x70000 / 4 + i - 114690][j];
            hima2[j] = mem_sub[0x70000 / 4 + i - 114690][j + 16];
          }
        }
        // printf("%s\n", hima);
        // printf("%x\n", atoi(&hima[0]));
        // // printf("%x\n", (int)strtol("1100001110011101", NULL, 2));
        // printf("%x\n%x\n", (int)strtol(&hima[0], NULL, 2), (int)(strtol(&hima2[0], NULL, 2)));
        // printf("%lo\n", strtol(&mem_sub[0x70000 / 4 + i - 2][0], NULL, 2));
        mem[0x70000 / 4 + i - 114690] = ((int)strtol(&hima[0], NULL, 2)) * 0x10000 + (int)strtol(&hima2[0], NULL, 2);
        // printf("%s\n", mem_sub[0x70000 / 4 + i - 114690]);
        // printf("%x\n", mem[0x70000 / 4 + i - 114690]);
      }
    }

    gettimeofday(&tv, NULL);
    ts0 = tv.tv_sec;
    t0 = tv.tv_usec;


        // 1orderの読み込み
        // printf("%s%s", allins[pc], order);

        // parse: add r1, r2, r3とかをa0 = add, a1 = r1, a2 = r2, a3 = r3にする
        // parse to a0
        i = 0;

        for (pc = 0; pc < insnum - 2; pc++) {

        for (j = 0; j < 7; j++) {
          if (j == 6)
            a0[pc][j] = '\0';
          else {
            a0[pc][j] = allins[pc + 2][i];
            i++;
          }
        }
        // if (pc > 16200 && pc < 16400) {
        // printf("pc = %d ins = %s", pc, allins[pc + 2]);
        // //
        // printf("a0 = %s\n", a0[pc]);
      //}


        // printf("%s", order);
        // printf("%s\n", a0);
        // printf("%d %d\n", i, j);

        // parse to a1 a1は5bit
        for (j = 0; j < 6; j++) {
          if (j == 5)
            a1[pc][j] = '\0';
          else {
            a1[pc][j] = allins[pc + 2][i];
            i++;
          }
        }

        // printf("a1 = %s  ", a1[pc]);

        // if (strcmp(a0[pc], "000000") == 0) {
        //   printf("yes\n");
        // }
        // else
        //   printf("no\n");


        // parse to a2
        for (j = 0; j < 6; j++) {
          if (j == 5)
            a2[pc][j] = '\0';
          else {
            a2[pc][j] = allins[pc + 2][i];
            i++;
          }
        }

        // printf("a2 = %s  ", a2[pc]);

        // parse to a3
        for (j = 0; j < 6; j++) {
          if (j == 5)
            a3[pc][j] = '\0';
          else {
            a3[pc][j] = allins[pc + 2][i];
            i++;
          }
        }

        // printf("a3 = %s  ", a3[pc]);

        for (j = 0; j < 6; j++) {
          if (j == 5)
            a4[pc][j] = '\0';
          else {
            a4[pc][j] = allins[pc + 2][i];
            i++;
          }
        }

        // printf("a4 = %s  ", a4[pc]);

        for (j = 0; j < 7; j++) {
          if (j == 6)
            a5[pc][j] = '\0';
          else {
            a5[pc][j] = allins[pc + 2][i];
            i++;
          }
        }
        i = 0;

        // printf("a5 = %s\n", a5[pc]);
    }

        //parse終了

        for (i = 0; i < insnum - 2; i++) {
          g = grammer_check(a0[i], a1[i], a2[i], a3[i],a4[i], a5[i], i, b0, b1, b2, b3);
        if (g == -1) {
            // for (j = 0; j < 100; j++) {
            //     if (allins[i][j] == '\n') {
            //         allins[i][j] = '\0';
            //         break;
            //     }
            // }
            printf("line %d error! the intstruction \n%s \nis different from [%s] of ISA.\n", i+3, allins[i + 3], a0[i+1]);
            return 0;
        }
    }
      pc =  0;
      int pc_sub = 4 * pc;
      int out_ignore = 1;
        // pc = labels[label_to_hash(start)];
        // printf("%s", allins[pc]);
        // printf("%d\n", pc);
        // printf("%s\n", a0[pc]);
        // printf("%s\n", a1[pc]);
        // printf("%s\n", a2[pc]);
        // printf("%s\n\n", a3[pc]);

    while(1) {
        //実行
      //   if (1) {
      //   printf("\n\n");
      //   printf("r1 = %x r2 = %x r3 = %x r4 = %x\nr5 = %x r6 = %x r7 = %x r8 = %x r9 = %x r10 = %x r31 = %x\n", gr[1], gr[2], gr[3], gr[4], gr[5], gr[6], gr[7], gr[8], gr[9], gr[10],gr[31]);
      //   printf("int表示 f0 = %d f1 = %d f2 = %d\n", ((int*)fr)[0], ((int*)fr)[1], ((int*)fr)[2]);
      //   printf("f0 = %f f1 = %f f2 = %f f3 = %f f4 = %f\n", fr[0], fr[1], fr[2], fr[3], fr[4]);
      //   printf("lr = %x\n", lr);
      //   // printf("gr = %p heap = %p stack = %p\n", gr, heap);
      //   // for (i = 0; i < 10; i++)
      //   //   printf("gr[1][%d] = %x %f\n",i,((int*)gr[1])[i],((float*)gr[1])[i]);
      //   printf("b1[pc] = %d b2[pc] = %d b3[pc] = %d\n", b1[pc], b2[pc], b3[pc]);
      //   printf("ins = %d  pc = %d\n", b0[pc], pc);
      //   printf("-----------------------------------------------------------------\n");
      //   fflush(stdout);
      //  }
        switch (b0[pc]) {

        case 1:
        gr[b1[pc]] = gr[b2[pc]];
        pc += 1; pc_sub = 4 * pc;
        break;

        case 2:
        gr[b1[pc]] = gr[b2[pc]] + gr[b3[pc]];
        pc += 1; pc_sub = 4 * pc;
        break;

        case 3:
        gr[b1[pc]] = gr[b2[pc]] + b3[pc];
        pc += 1; pc_sub = 4 * pc;
        break;

        case 4:
        gr[b1[pc]] = gr[b2[pc]] - gr[b3[pc]];
        pc += 1; pc_sub = 4 * pc;
        break;

        case 5:
        gr[b1[pc]] = gr[b2[pc]] - b3[pc];
        pc += 1; pc_sub = 4 * pc;
        break;

        case 6:
        gr[b1[pc]] = gr[b2[pc]] & gr[b3[pc]];
        pc += 1; pc_sub = 4 * pc;
        break;

        case 7:
        gr[b1[pc]] = gr[b2[pc]] & b3[pc];
        pc += 1; pc_sub = 4 * pc;
        break;

        case 8:
        gr[b1[pc]] = gr[b2[pc]] | gr[b3[pc]];
        pc += 1; pc_sub = 4 * pc;
        break;

        case 9:
        gr[b1[pc]] = gr[b2[pc]] | b3[pc];
        pc += 1; pc_sub = 4 * pc;
        break;

        case 10:
        gr[b1[pc]] = gr[b2[pc]] ^ gr[b3[pc]];
        pc += 1; pc_sub = 4 * pc;
        break;

        case 11:
        gr[b1[pc]] = ~(gr[b2[pc]] | gr[b3[pc]]);
        pc += 1; pc_sub = 4 * pc;
        break;

        case 12:
        tmp = (unsigned int)gr[b2[pc]];
        tmp2 = tmp << b3[pc];
        ((unsigned int*)gr)[b1[pc]] = tmp2;
        pc += 1; pc_sub = 4 * pc;
        break;

        case 13:
        tmp = (unsigned int)gr[b2[pc]];
        tmp2 = tmp >> b3[pc];
        gr[b1[pc]] = (int)tmp2;
        // printf("\ntmp = %x\ntmp2 = %x\nr1 = %x\nr2 = %x\n", tmp, tmp2, gr[b1[pc]], gr[b2[pc]]);
        pc += 1; pc_sub = 4 * pc;
        break;

        case 14:
        gr[b1[pc]] = gr[b2[pc]] >> b3[pc];
        pc += 1; pc_sub = 4 * pc;
        break;

        case 15:
        // printf("%d\n", *(int*)(gr[b2[pc]] + b3[pc]));
        gr[b1[pc]] = mem[(gr[b2[pc]] + b3[pc]) / 4];
        // gr[b1[pc]] = mem[(gr[b2[pc]] + b3[pc]) / 4];
        pc += 1; pc_sub = 4 * pc;
        break;

        case 16:
        // printf("%x\n", *(int*)(gr[b2[pc]] + b3[pc]));
        // fflush(stdout);
        mem[(gr[b2[pc]] + b3[pc]) / 4] = gr[b1[pc]];
        // mem[(gr[b2[pc]] + b3[pc]) / 4] = gr[b1[pc]];
        pc += 1; pc_sub = 4 * pc;
        break;

        case 17:
        // printf("%s\n%d\n", a1[pc], label_to_hash(a1[pc]));
        pc = b1[pc]; pc_sub = 4 * pc;
        break;

        case 18:
        // printf("%d\n", gr[b1[pc]]);
        pc = gr[b1[pc]] / 4; pc_sub = 4 * pc;
        break;

        case 19:
        if (gr[b1[pc]] == gr[b2[pc]]) {
            pc_sub += 4 + 4 * b3[pc]; pc = pc_sub / 4;
          }
        else
            pc += 1; pc_sub = 4 * pc;
        break;

        case 20:
         if (gr[b1[pc]] != gr[b2[pc]]) {
            // printf("%s\n%d\n%d\n", a3[pc], labels[label_to_hash(a3[pc])], labels[label_to_hash(a3[pc]) - 13]);
            pc_sub += 4 + 4 * b3[pc]; pc = pc_sub / 4;
          }
        else
            pc += 1; pc_sub = 4 * pc;
        break;

        case 21:
        pc = lr / 4; pc_sub = pc * 4;
        if (lr == -1) {
              printf("%d\n", k);
          return 0;
        }
        break;

        case 22:
        pc += 1; pc_sub = 4 * pc;
        break;

        case 23:
        gr[1] = gr[1] - 4;
        mem[gr[1]] = gr[b1[pc]];
        pc += 1; pc_sub = 4 * pc;
        break;

        case 24:
        gr[b1[pc]] = mem[gr[1] / 4];
        gr[1] = gr[1] + 4;
        pc += 1; pc_sub = 4 * pc;
        break;

        case 25:
        gr[b1[pc]] = b2[pc] << 16;
        // gr[b1[pc]] = b2[pc];
        pc += 1; pc_sub = 4 * pc;
        break;

        case 26:
        gr[b1[pc]] = labels[label_to_hash(a2[pc])];
        pc += 1; pc_sub = 4 * pc;
        break;

        case 27:
        lr = (pc + 1) * 4;
        pc = b1[pc]; pc_sub = pc * 4;
        break;

        case 28:
        lr = (pc + 1) * 4;
        pc = gr[b1[pc]] / 4; pc_sub = pc * 4;
        break;

        case 29:
        gr[b1[pc]] = lr;
        pc += 1; pc_sub = 4 * pc;
        break;

        case 30:
        lr = (pc + 1) * 4;
        // printf("%s\n%d\n%d\n", a1[pc], labels[label_to_hash(a1[pc])], labels[label_to_hash(a1[pc]) - 13]);
        pc = labels[label_to_hash(a1[pc])]; pc_sub = 4 * pc;
        break;

        case 31:
        fr[b1[pc]] = (float)((int*)fr)[b2[pc]];
        // printf("fr[%d] = %d\n", b1[pc], ((int*)fr)[b1[pc]]);
        pc += 1; pc_sub = 4 * pc;
        break;

        case 32:
        if (fr[b2[pc]] < 0.0) {
          if (fr[b2[pc]] - (float)(int)fr[b2[pc]] == -0.5) {
            if ((int)(fr[b2[pc]] - 0.5) % 2 == 0) {
              ((int*)fr)[b1[pc]] = (int)(fr[b2[pc]] - 0.5);
            }
            else {
              ((int*)fr)[b1[pc]] = (int)(fr[b2[pc]] + 0.5);
            }
            // ((int*)fr)[b1[pc]] = (int)(fr[b2[pc]] - 0.5);
          }
          else
            ((int*)fr)[b1[pc]] = (int)(fr[b2[pc]] - 0.5);
        }
        else if (fr[b2[pc]] > 0.0) {
          if (fr[b2[pc]] - (float)(int)fr[b2[pc]] == 0.5) {
            if ((int)(fr[b2[pc]] - 0.5) % 2 == 0) {
              ((int*)fr)[b1[pc]] = (int)(fr[b2[pc]] - 0.5);
            }
            else {
              ((int*)fr)[b1[pc]] = (int)(fr[b2[pc]] + 0.5);
            }
            // ((int*)fr)[b1[pc]] = (int)(fr[b2[pc]] + 0.5);
          }
          else
            ((int*)fr)[b1[pc]] = (int)(fr[b2[pc]] + 0.5);
        }
        else
          ((int*)fr)[b1[pc]] = 0.0;
        // ((int*)fr)[b1[pc]] = fr[b2[pc]];
        pc += 1; pc_sub = 4 * pc;
        break;

        case 33:
        // printf("x: %p\n",*(void**)(gr[b2[pc]] + b3[pc]+4));
        ((float*)mem)[(gr[b2[pc]] + b3[pc]) / 4] = fr[b1[pc]];
        // printf("x: %p\n",*(void**)(gr[b2[pc]] + b3[pc]+4));
        pc += 1; pc_sub = 4 * pc;
        break;

        case 34:
        fr[b1[pc]] = ((float*)mem)[(gr[b2[pc]] + b3[pc]) / 4];
        pc += 1; pc_sub = 4 * pc;
        break;

        case 35:
        fr[b1[pc]] = fr[b2[pc]] + fr[b3[pc]];
        pc += 1; pc_sub = 4 * pc;
        break;

        case 36:
        fr[b1[pc]] = fr[b2[pc]] - fr[b3[pc]];
        pc += 1; pc_sub = 4 * pc;
        break;

        case 37:
        // printf("%f\n%f\n%f\n", fr[b1[pc]], fr[b2[pc]], fr[b3[pc]]);
        fr[b1[pc]] = fr[b2[pc]] * fr[b3[pc]];
        // printf("%f\n%f\n%f\n", fr[b1[pc]], fr[b2[pc]], fr[b3[pc]]);
        pc += 1; pc_sub = 4 * pc;
        break;

        case 38:
        // printf("%f\n%f\n%f\n", fr[b1[pc]], fr[b2[pc]], fr[b3[pc]]);
        fr[b1[pc]] = fr[b2[pc]] / fr[b3[pc]];
        // printf("%f\n%f\n%f\n", fr[b1[pc]], fr[b2[pc]], fr[b3[pc]]);
        pc += 1; pc_sub = 4 * pc;
        break;

        case 39:
        fr[b1[pc]] = f[pc];
        pc += 1; pc_sub = 4 * pc;
        break;

        case 40:
        printf("%d", *(int*)gr[1]);
        pc += 1; pc_sub = 4 * pc;
        break;

        case 41:
        printf("%c", *(char*)gr[1]);
        pc += 1; pc_sub = 4 * pc;
        break;

        case 42:
        // printf("f: %f\n",*(float*)gr[1]);
        if (*(float*)gr[1] < *(float*)(gr[1] + 4))
          gr[5] = 1;
        else
          gr[5] = 0;
	      pc += 1; pc_sub = 4 * pc;
        break;

        case 43:
        if (gr[b2[pc]] < gr[b3[pc]])
          gr[b1[pc]] = 1;
        else
          gr[b1[pc]] = 0;
	      pc += 1; pc_sub = 4 * pc;
        break;

        case 44:
        if (gr[b2[pc]] < b3[pc])
          gr[b1[pc]] = 1;
        else
          gr[b1[pc]] = 0;
	      pc += 1; pc_sub = 4 * pc;
        break;

        case 45:
        fr[b1[pc]] = sqrtf(fr[b2[pc]]);
        pc += 1; pc_sub = 4 * pc;
        break;

        case 46:
        if (fr[b1[pc]] < fr[b2[pc]])
          cr = 1;
        else
          cr = 0;
        pc += 1; pc_sub = 4 * pc;
        break;

        case 47:
        if (fr[b1[pc]] == fr[b2[pc]])
          cr = 1;
        else
          cr = 0;
        pc += 1; pc_sub = 4 * pc;
        break;

        case 48:
        if (cr == 1) {
          pc_sub += 4 + 4 * b1[pc]; pc = pc_sub / 4;
        }
        else {
          pc += 1; pc_sub = 4 * pc;}
        break;

        case 49:
        if (cr == 0) {
          pc_sub += 4 + 4 * b1[pc]; pc = pc_sub / 4;
        }
        else {
          pc += 1; pc_sub = 4 * pc;}
        break;

        case 50:
        scanf("%d", &gr[5]);
        pc += 1; pc_sub = 4 * pc;
        break;

        case 51:
        scanf("%f", &gr[5]);
        pc += 1; pc_sub = 4 * pc;
        break;

        case 52:
        return 0;
        break;

        case 53:
        if (gr[b2[pc]] == gr[b3[pc]])
          gr[b1[pc]] = 1;
        else
          gr[b1[pc]] = 0;
	      pc += 1; pc_sub = 4 * pc;
        break;

        case 54:
        // printf("\nfr = %d gr = %x\n", ((int*)fr)[b1[pc]], gr[b2[pc]]);
        fr[b1[pc]] = ((float*)gr)[b2[pc]];
        // printf("\nfr = %d gr = %x\n", ((int*)fr)[b1[pc]], gr[b2[pc]]);
        pc += 1; pc_sub = 4 * pc;
        break;

        case 55:
        gr[b1[pc]] = ((int*)fr)[b2[pc]];
        pc += 1; pc_sub = 4 * pc;
        break;

        case 56:
        if (buf_point == 0) {
          scanf("%d", &buf);
          gr[b1[pc]] = buf % 0x100;
          buf_point = 1;
        }
        else if (buf_point == 1) {
          gr[b1[pc]] = (buf % 0x10000 - buf % 0x100) / 0x100;
          buf_point = 2;
        }
        else if (buf_point == 2) {
          gr[b1[pc]] = (buf % 0x1000000 - buf % 0x10000) / 0x10000;
          buf_point = 3;
        }
        else if (buf_point == 3) {
          gr[b1[pc]] = (buf - buf % 0x1000000) / 0x1000000;
          buf_point = 0;
        }
        pc += 1; pc_sub = 4 * pc;
        break;

        case 57:
        if (buf_point == 0) {
          scanf("%f", (float*)&buf);
          gr[b1[pc]] = buf % 0x100;
          buf_point = 1;
        }
        else if (buf_point == 1) {
          gr[b1[pc]] = (buf % 0x10000 - buf % 0x100) / 0x100;
          buf_point = 2;
        }
        else if (buf_point == 2) {
          gr[b1[pc]] = (buf % 0x1000000 - buf % 0x10000) / 0x10000;
          buf_point = 3;
        }
        else if (buf_point == 3) {
          gr[b1[pc]] = (buf - buf % 0x1000000) / 0x1000000;
          buf_point = 0;
        }
        pc += 1; pc_sub = 4 * pc;
        break;

        case 58:
        if (out_ignore < 2)
          out_ignore += 1;
        else
          printf("%c", gr[b1[pc]]);
        // printf("rint = %d\n", gr[b1[pc]]);
        pc += 1; pc_sub = 4 * pc;
        break;

        case 59:
        fr[b1[pc]] = fr[b2[pc]];
        pc += 1; pc_sub = 4 * pc;
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
