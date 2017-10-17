#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/time.h>

int gr[32];
double fr[32];
int mem[4096];
int pc = 0;
int cr = 0;

// allorderから指定のlabel探索
int find_label(char* a, char allorder[1000][100]) {
    int i;
    int j;
    for (i = 0; i < strlen(a) + 1; i++) {
        if (a[i] == '\0') {
            a[i] = ':';
            a[i + 1] = '\n';
            a[i + 2] = '\0';
            break;
        }
    }
    for (j = 0; j < 100; j++) {
        if (strcmp(a, allorder[j]) == 0)
            break;
    }
    a[i] = '\0';
    return j + 1;
}

int grammer_check(char* a0, char* a1, char* a2, char* a3) {
    int i;
    for (i = 0; i < strlen(a0); i++) {
        if (a0[i] == ':')
            return 1;
    }
    if (strcmp(a0, ";") == 0)
        return 0;
    if (strcmp(a0, "add") == 0 || strcmp(a0, "sub") == 0 || strcmp(a0, "and") == 0 || strcmp(a0, "and") == 0 || strcmp(a0, "or") == 0 || strcmp(a0, "xor") == 0|| strcmp(a0, "nor") == 0) {
        if (a1[0] != 'r' || a2[0] != 'r' || a3[0] != 'r')
            return -1;
        else
            return 0;
    }
    else if (strcmp(a0, "mov") == 0) {
        if (a1[0] != 'r' || (a2[0] != 'r' && strcmp(a2, "global_heap") != 0))
            return -1;
        else
            return 0;
    }
    else if (strcmp(a0, "addi") == 0 || strcmp(a0, "subi") == 0 || strcmp(a0, "andi") == 0 || strcmp(a0, "ori") == 0 || strcmp(a0, "sll") == 0 || strcmp(a0, "srl") == 0 || strcmp(a0, "sra") == 0 || strcmp(a0, "lw") == 0 || strcmp(a0, "sw") == 0) {
        if (a1[0] != 'r' || a2[0] != 'r')
            return -1;
        else
            return 0;
    }
    else if (strcmp(a0, "beq") == 0 || strcmp(a0, "bne") == 0) {
        if (a1[0] != 'r' || a2[0] != 'r')
            return -1;
        else
            return 0;
        }
    else if (strcmp(a0, "j") == 0)
        return 0;
    else if (strcmp(a0, "jr") == 0) {
        if (a1[0] != 'r')
            return -1;
        else
            return 0;
        }
    else
        printf("the instruction [%s] doesn't exist.\n", a0);
        return -2;
}




int main(int argc, char* argv[]) {
    FILE *fd = fopen(argv[1], "r");
    int i = 0;
    int j = 0;
    int k = 0;
    char allorder[1000][100];
    char a0[1000][20];
    char a1[1000][20];
    char a2[1000][20];
    char a3[1000][20];
    int b1,b2,b3;
    char start[20] = "main";
    int global_heap = 0;
    struct timeval tv;
    int t0, t1, ts0, ts1;
    int g;
    unsigned int tmp, tmp2;
    int a0_sub[1000]; //a0を命令番号を格納
    int label_index[1000];

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
        if (fgets(allorder[i], 100, fd) == NULL)
            break;
            // printf("%s", allallorder[pc][i]);
    }

    pc = find_label(start, allorder);
    gettimeofday(&tv, NULL);
    ts0 = tv.tv_sec;
    t0 = tv.tv_usec;


    while(1) {
        // 1orderの読み込み
        // printf("%s%s", allorder[pc], order);

        // parse: add r1, r2, r3とかをa0 = add, a1 = r1, a2 = r2, a3 = r3にする
        // parse to a0
        i = 0;
        j = 0;

        if (a0[pc][0] == '\0') {
        while (1) {
            if ((allorder[pc][i] == ' ' || allorder[pc][i] == ',' || allorder[pc][i] == '\n' || allorder[pc][i] == '\0') && j != 0) {
                a0[pc][j] = '\0';
                i += 1;
                j = 0;
                break;
            }
            else if ((allorder[pc][i] == ' ' || allorder[pc][i] == '\t') && j == 0) {
                i += 1;
            }
            else {
                a0[pc][j] = allorder[pc][i];
                // printf("%c %c %d %d\n", a0[j], allorder[pc][i], j, i);
                i += 1;
                j += 1;
            }
        }


        if (strcmp(a0[pc], "ret") == 0) {
            printf("return %d\n", gr[b1]);
            return gr[b1];
            break;
        }
        // printf("%s", order);
        // printf("%s\n", a0);
        // printf("%d %d\n", i, j);

        // parse to a1
        while (1) {
            if ((allorder[pc][i] == ' ' || allorder[pc][i] == ',' || allorder[pc][i] == '\n' || allorder[pc][i] == '\0' || allorder[pc][i] == ']' || allorder[pc][i] == '[') && j != 0) {
                a1[pc][j] = '\0';
                i += 1;
                j = 0;
                break;
            }
            else if ((allorder[pc][i] == ' ' || allorder[pc][i] == '\t') && j == 0) {
                i += 1;
            }
            // else if ((allorder[pc][i] == '+' || allorder[pc][i] == '-') && j != 0) {
            //     a1[j] = '\0';
            //     j = 0;
            //     break;
            // }
            else {
                a1[pc][j] = allorder[pc][i];
                i += 1;
                j += 1;
            }
        }

        // parse to a2
        while (1) {
            if ((allorder[pc][i] == ' ' || allorder[pc][i] == ',' || allorder[pc][i] == '\n' || allorder[pc][i] == '\0' || allorder[pc][i] == ']' || allorder[pc][i] == '[') && j != 0) {
                a2[pc][j] = '\0';
                // printf("%d %d\n", i, j);
                i += 1;
                j = 0;
                break;
            }
            else if ((allorder[pc][i] == ' ' || allorder[pc][i] == '\t') && j == 0) {
                i += 1;
            }
            // else if ((allorder[pc][i] == '+' || allorder[pc][i] == '-') && j != 0) {
            //     a1[j] = '\0';
            //     j = 0;
            //     break;
            // }
            else {
                // printf("%c\n", order)
                a2[pc][j] = allorder[pc][i];
                i += 1;
                j += 1;
            }
        }

        // parse to a3
        while (1) {
            if ((allorder[pc][i] == ' ' || allorder[pc][i] == ',' || allorder[pc][i] == '\n' || allorder[pc][i] == '\0' || allorder[pc][i] == ']' || allorder[pc][i] == '[') && j != 0) {
                a3[pc][j] = '\0';
                // printf("%d %d\n", i, j);
                i += 1;
                j = 0;
                break;
            }
            else if ((allorder[pc][i] == ' ' || allorder[pc][i] == '\t') && j == 0) {
                i += 1;
            }
            // else if ((allorder[pc][i] == '+' || allorder[pc][i] == '-') && j != 0) {
            //     a1[j] = '\0';
            //     j = 0;
            //     break;
            // }
            else {
                // printf("%c\n", order)
                a3[pc][j] = allorder[pc][i];
                i += 1;
                j += 1;
            }
        }
    }
        //parse終了

        // printf("%s", order);
        // printf("%d\n", pc);
        // printf("%s\n", a0[pc]);
        // printf("%s\n", a1[pc]);
        // printf("%s\n", a2[pc]);
        // printf("%s\n\n", a3[pc]);
        // printf("%s", order);
        // g = grammer_check(a0, a1, a2, a3);
        // if (g == -1) {
        //     for (i = 0; i < 100; i++) {
        //         if (allorder[pc][i] == '\n') {
        //             allorder[pc][i] = '\0';
        //             break;
        //         }
        //     }
        //     printf("error! the intstruction [%s] is different from [%s] of ISA.\n", order, a0);
        //     return 0;
        // }
        // else if (g == -2)
        //     return 0;

        b1 = atoi(&a1[pc][1]);
        b2 = atoi(&a2[pc][1]);
        b3 = atoi(&a3[pc][1]);


        //実行
        switch (a0_sub[pc]) {
        case 0:

        if (strcmp(a0[pc], "mov") == 0) {
            if (strcmp(a2[pc], "global_heap") == 0) {
                gr[b1] = global_heap;
                // printf("gr[%d] = %d\n", b1, gr[b1]);
            }
            gr[b1] = gr[b2];
            a0_sub[pc] = 1;
            // printf("gr[%d] = %d\n", b1, gr[b1]);
            pc += 1;
        }
        else

        if (strcmp(a0[pc], "add") == 0) {
            gr[b1] = gr[b2] + gr[b3];
            a0_sub[pc] = 2;
            // printf("gr[%d] = %d\n", b1, gr[b1]);
            pc += 1;
        }
        else

        if (strcmp(a0[pc], "addi") == 0) {
            gr[b1] = gr[b2] + b3;
            a0_sub[pc] = 3;
            // printf("gr[%d] = %d\n", b1, gr[b1]);
            pc += 1;
        }
        else

        if (strcmp(a0[pc], "sub") == 0) {
            gr[b1] = gr[b2] - gr[b3];
            a0_sub[pc] = 4;
            // printf("gr[%d] = %d\n", b1, gr[b1]);
            pc += 1;
        }
        else

        if (strcmp(a0[pc], "subi") == 0) {
            gr[b1] = gr[b2] + b3;
            a0_sub[pc] = 5;
            // printf("gr[%d] = %d\n", b1, gr[b1]);
            pc += 1;
        }
        else

        if (strcmp(a0[pc], "and") == 0) {
            gr[b1] = gr[b2] & gr[b3];
            a0_sub[pc] = 6;
            // printf("gr[%d] = %d\n", b1, gr[b1]);
            pc += 1;
        }
        else

        if (strcmp(a0[pc], "andi") == 0) {
            gr[b1] = gr[b2] & b3;
            a0_sub[pc] = 7;
            // printf("gr[%d] = %d\n", b1, gr[b1]);
            pc += 1;
        }
        else

        if (strcmp(a0[pc], "or") == 0) {
            gr[b1] = gr[b2] | gr[b3];
            a0_sub[pc] = 8;
            // printf("gr[%d] = %d\n", b1, gr[b1]);
            pc += 1;
        }
        else

        if (strcmp(a0[pc], "ori") == 0) {
            gr[b1] = gr[b2] | b3;
            a0_sub[pc] = 9;
            // printf("gr[%d] = %d\n", b1, gr[b1]);
            pc += 1;
        }
        else

        if (strcmp(a0[pc], "xor") == 0) {
            gr[b1] = gr[b2] ^ gr[b3];
            a0_sub[pc] = 10;
            // printf("gr[%d] = %d\n", b1, gr[b1]);
            pc += 1;
        }
        else

        if (strcmp(a0[pc], "nor") == 0) {
            gr[b1] = ~(gr[b2] | gr[b3]);
            a0_sub[pc] = 11;
            // printf("gr[%d] = %d\n", b1, gr[b1]);
            pc += 1;
        }
        else

        if (strcmp(a0[pc], "sll") == 0) {
            tmp = (unsigned int)gr[b2];
            tmp2 = tmp << b3;
            gr[b1] = (int)tmp2;
            a0_sub[pc] = 12;
            // printf("gr[%d] = %d\n", b1, gr[b1]);
            pc += 1;
        }
        else

        if (strcmp(a0[pc], "srl") == 0) {
            tmp = (unsigned int)gr[b2];
            tmp2 = tmp >> b3;
            gr[b1] = (int)tmp2;
            a0_sub[pc] = 13;
            // printf("gr[%d] = %d\n", b1, gr[b1]);
            pc += 1;
        }
        else

        if (strcmp(a0[pc], "sra") == 0) {
            gr[b1] = gr[b2] >> b3;
            a0_sub[pc] = 14;
            // printf("gr[%d] = %d\n", b1, gr[b1]);
            pc += 1;
        }
        else

        if (strcmp(a0[pc], "lw") == 0) {
            gr[b1] = mem[gr[b2] + b3/4];
            a0_sub[pc] = 15;
            // printf("gr[%d] = %d\n", b1, gr[b1]);
            pc += 1;
        }
        else

        if (strcmp(a0[pc], "sw") == 0) {
            mem[gr[b2] + b3/4] = gr[b1];
            a0_sub[pc] = 16;
            // printf("mem[%d] = %d\n", gr[b2] + b3/4, mem[gr[b2] + b3/4]);
            pc += 1;
        }
        else

        if (strcmp(a0[pc], "j") == 0) {
            a0_sub[pc] = 17;
            pc = find_label(a1[pc], allorder);
        }
        else

        if (strcmp(a0[pc], "jr") == 0){
            a0_sub[pc] = 18;
            pc = gr[b1];
        }
        else

        if (strcmp(a0[pc], "beq") == 0) {
            label_index[pc] = find_label(a3[pc], allorder);
            if (gr[b1] == gr[b2])
                pc = label_index[pc];
            else
                pc += 1;
            a0_sub[pc] = 19;
        }
        else

        if (strcmp(a0[pc], "bne") == 0) {
            if (gr[b1] != gr[b2])
                pc = find_label(a3[pc], allorder);
            else
                pc += 1;
            a0_sub[pc] = 20;
            }
        else {
            a0_sub[pc] = 21;
            pc += 1;
        }
        break;

        case 1:
        if (strcmp(a2[pc], "global_heap") == 0) {
            gr[b1] = global_heap;
            // printf("gr[%d] = %d\n", b1, gr[b1]);
        }
        gr[b1] = gr[b2];
        pc += 1;
        break;

        case 2:
        gr[b1] = gr[b2] + gr[b3];
        pc += 1;
        break;

        case 3:
        gr[b1] = gr[b2] + b3;
        pc += 1;
        break;

        case 4:
        gr[b1] = gr[b2] - gr[b3];
        pc += 1;
        break;

        case 5:
        gr[b1] = gr[b2] - b3;
        pc += 1;
        break;

        case 6:
        gr[b1] = gr[b2] & gr[b3];
        pc += 1;
        break;

        case 7:
        gr[b1] = gr[b2] & b3;
        pc += 1;
        break;

        case 8:
        gr[b1] = gr[b2] | gr[b3];
        pc += 1;
        break;

        case 9:
        gr[b1] = gr[b2] | b3;
        pc += 1;
        break;

        case 10:
        gr[b1] = gr[b2] ^ gr[b3];
        pc += 1;
        break;

        case 11:
        gr[b1] = ~(gr[b2] | gr[b3]);
        pc += 1;
        break;

        case 12:
        tmp = (unsigned int)gr[b2];
        tmp2 = tmp << b3;
        gr[b1] = (int)tmp2;
        pc += 1;
        break;

        case 13:
        tmp = (unsigned int)gr[b2];
        tmp2 = tmp >> b3;
        gr[b1] = (int)tmp2;
        pc += 1;
        break;

        case 14:
        gr[b1] = gr[b2] >> b3;
        pc += 1;
        break;

        case 15:
        gr[b1] = mem[gr[b2] + b3/4];
        pc += 1;
        break;

        case 16:
        mem[gr[b2] + b3/4] = gr[b1];
        pc += 1;
        break;

        case 17:
        pc = find_label(a1[pc], allorder);
        break;

        case 18:
        pc = gr[b1];
        break;

        case 19:
        if (gr[b1] == gr[b2])
            pc = label_index[pc];
        else
            pc += 1;
        break;

        case 20:
        if (gr[b1] != gr[b2])
            pc = find_label(a3[pc], allorder);
        else
            pc += 1;
        break;

        case 21:
        pc += 1;
        break;
    }

        k += 1;
        if (k > 1e6) {
            gettimeofday(&tv, NULL);
            ts1 = tv.tv_sec;
            t1 = tv.tv_usec;
            printf("%d %d\n", ts1 - ts0, t1 - t0);
            break;
        }
    }
}
