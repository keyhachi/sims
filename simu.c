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
    for (i = 0; i < strlen(a) + 1; i++) {
        if (a[i] == '\0') {
            a[i] = ':';
            a[i + 1] = '\n';
            a[i + 2] = '\0';
            break;
        }
    }
    for (i = 0; i < 100; i++) {
        if (strcmp(a, allorder[i]) == 0)
            break;
    }
    return i + 1;
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
    int i2 = 0;
    int j = 0;
    int k = 0;
    int ordernum = 0; //命令数
    char allorder[1000][100];
    char order[100];
    char a0[20];
    char a1[20];
    char a2[20];
    char a3[20];
    int b1,b2,b3;
    int pc_b;
    char start[20] = "main";
    int global_heap = 0;
    struct timeval tv;
    int t0, t1, ts0, ts1;
    int g;

    for (i = 0; i < 16; i++)
        gr[i] = 0;
    for (i = 0; i < 16; i++)
        fr[i] = 0.0;


    gr[0] = 2000;

    // memset(gr, 0, strlen(gr));
    memset(order, '\0', strlen(order));
    memset(a0, '\0', strlen(a0));
    memset(a1, '\0', strlen(a1));
    memset(a2, '\0', strlen(a2));
    memset(a3, '\0', strlen(a3));
    // char **a = (char**)malloc(1000);

    for (i = 0; i < 100; i++) {
        if (fgets(allorder[i], 100, fd) == NULL)
            break;
        else
            ordernum += 1;
            // printf("%s", allorder[i]);
    }

    pc = find_label(start, allorder);
    gettimeofday(&tv, NULL);
    ts0 = tv.tv_sec;
    t0 = tv.tv_usec;


    while(1) {
        // 1orderの読み込み
        strcpy(order, allorder[pc]);
        // printf("%s%s", allorder[pc], order);

        // parse: add r1, r2, r3とかをa0 = add, a1 = r1, a2 = r2, a3 = r3にする
        // parse to a0
        i = 0;
        j = 0;

        while (1) {
            if ((order[i] == ' ' || order[i] == ',' || order[i] == '\n' || order[i] == '\0') && j != 0) {
                a0[j] = '\0';
                i += 1;
                j = 0;
                break;
            }
            else if ((order[i] == ' ' || order[i] == '\t') && j == 0) {
                i += 1;
            }
            else {
                a0[j] = order[i];
                // printf("%c %c %d %d\n", a0[j], order[i], j, i);
                i += 1;
                j += 1;
            }
        }


        if (strcmp(a0, "ret") == 0) {
            printf("return %d\n", gr[b1]);
            return gr[b1];
            break;
        }
        // printf("%s", order);
        // printf("%s\n", a0);
        // printf("%d %d\n", i, j);

        // parse to a1
        while (1) {
            if ((order[i] == ' ' || order[i] == ',' || order[i] == '\n' || order[i] == '\0' || order[i] == ']' || order[i] == '[') && j != 0) {
                a1[j] = '\0';
                i += 1;
                j = 0;
                break;
            }
            else if ((order[i] == ' ' || order[i] == '\t') && j == 0) {
                i += 1;
            }
            // else if ((order[i] == '+' || order[i] == '-') && j != 0) {
            //     a1[j] = '\0';
            //     j = 0;
            //     break;
            // }
            else {
                a1[j] = order[i];
                i += 1;
                j += 1;
            }
        }

        // parse to a2
        while (1) {
            if ((order[i] == ' ' || order[i] == ',' || order[i] == '\n' || order[i] == '\0' || order[i] == ']' || order[i] == '[') && j != 0) {
                a2[j] = '\0';
                // printf("%d %d\n", i, j);
                i += 1;
                j = 0;
                break;
            }
            else if ((order[i] == ' ' || order[i] == '\t') && j == 0) {
                i += 1;
            }
            // else if ((order[i] == '+' || order[i] == '-') && j != 0) {
            //     a1[j] = '\0';
            //     j = 0;
            //     break;
            // }
            else {
                // printf("%c\n", order)
                a2[j] = order[i];
                i += 1;
                j += 1;
            }
        }

        // parse to a3
        while (1) {
            if ((order[i] == ' ' || order[i] == ',' || order[i] == '\n' || order[i] == '\0' || order[i] == ']' || order[i] == '[') && j != 0) {
                a3[j] = '\0';
                // printf("%d %d\n", i, j);
                i += 1;
                j = 0;
                break;
            }
            else if ((order[i] == ' ' || order[i] == '\t') && j == 0) {
                i += 1;
            }
            // else if ((order[i] == '+' || order[i] == '-') && j != 0) {
            //     a1[j] = '\0';
            //     j = 0;
            //     break;
            // }
            else {
                // printf("%c\n", order)
                a3[j] = order[i];
                i += 1;
                j += 1;
            }
        }
        //parse終了

        // printf("%s", order);
        // printf("%s\n", a0);
        // printf("%s\n", a1);
        // printf("%s\n", a2);
        // printf("%s\n\n", a3);
        // printf("%s", order);
        // g = grammer_check(a0, a1, a2, a3);
        // if (g == -1) {
        //     for (i = 0; i < 100; i++) {
        //         if (order[i] == '\n') {
        //             order[i] = '\0';
        //             break;
        //         }
        //     }
        //     printf("error! the intstruction [%s] is different from [%s] of ISA.\n", order, a0);
        //     return 0;
        // }
        // else if (g == -2)
        //     return 0;

        b1 = atoi(&a1[1]);
        b2 = atoi(&a2[1]);
        b3 = atoi(&a3[1]);


        //実行

        for (i = 0; i < strlen(a0); i++) {
            if (a0[i] == ':')
                pc += 1;
        }

        if (strcmp(a0, ";") == 0)
            pc += 1;
        else

        if (strcmp(a0, "mov") == 0) {
            if (strcmp(a2, "global_heap") == 0) {
                gr[b1] = global_heap;
                // printf("gr[%d] = %d\n", b1, gr[b1]);
            }
            gr[b1] = gr[b2];
            // printf("gr[%d] = %d\n", b1, gr[b1]);
            pc += 1;
        }
        else

        if (strcmp(a0, "add") == 0) {
            gr[b1] = gr[b2] + gr[b3];
            // printf("gr[%d] = %d\n", b1, gr[b1]);
            pc += 1;
        }
        else

        if (strcmp(a0, "addi") == 0) {
            gr[b1] = gr[b2] + b3;
            // printf("gr[%d] = %d\n", b1, gr[b1]);
            pc += 1;
        }
        else

        if (strcmp(a0, "sub") == 0) {
            gr[b1] = gr[b2] - gr[b3];
            // printf("gr[%d] = %d\n", b1, gr[b1]);
            pc += 1;
        }
        else

        if (strcmp(a0, "subi") == 0) {
            gr[b1] = gr[b2] + b3;
            // printf("gr[%d] = %d\n", b1, gr[b1]);
            pc += 1;
        }
        else

        if (strcmp(a0, "and") == 0) {
            gr[b1] = gr[b2] && gr[b3];
            // printf("gr[%d] = %d\n", b1, gr[b1]);
            pc += 1;
        }
        else

        if (strcmp(a0, "andi") == 0) {
            gr[b1] = gr[b2] & b3;
            // printf("gr[%d] = %d\n", b1, gr[b1]);
            pc += 1;
        }
        else

        if (strcmp(a0, "or") == 0) {
            gr[b1] = gr[b2] | gr[b3];
            // printf("gr[%d] = %d\n", b1, gr[b1]);
            pc += 1;
        }
        else

        if (strcmp(a0, "ori") == 0) {
            gr[b1] = gr[b2] | b3;
            // printf("gr[%d] = %d\n", b1, gr[b1]);
            pc += 1;
        }
        else

        if (strcmp(a0, "xor") == 0) {
            gr[b1] = gr[b2] ^ gr[b3];
            // printf("gr[%d] = %d\n", b1, gr[b1]);
            pc += 1;
        }
        else

        if (strcmp(a0, "nor") == 0) {
            gr[b1] = ~(gr[b2] | gr[b3]);
            // printf("gr[%d] = %d\n", b1, gr[b1]);
            pc += 1;
        }
        else

        if (strcmp(a0, "sll") == 0) {
            unsigned int tmp, tmp2;
            tmp = (unsigned int)gr[b2];
            tmp2 = tmp << b3;
            gr[b1] = (int)tmp2;
            // printf("gr[%d] = %d\n", b1, gr[b1]);
            pc += 1;
        }
        else

        if (strcmp(a0, "srl") == 0) {
            unsigned int tmp, tmp2;
            tmp = (unsigned int)gr[b2];
            tmp2 = tmp >> b3;
            gr[b1] = (int)tmp2;
            // printf("gr[%d] = %d\n", b1, gr[b1]);
            pc += 1;
        }
        else

        if (strcmp(a0, "sra") == 0) {
            gr[b1] = gr[b2] >> b3;
            // printf("gr[%d] = %d\n", b1, gr[b1]);
            pc += 1;
        }
        else

        if (strcmp(a0, "lw") == 0) {
            gr[b1] = mem[gr[b2] + b3/4];
            // printf("gr[%d] = %d\n", b1, gr[b1]);
            pc += 1;
        }
        else

        if (strcmp(a0, "sw") == 0) {
            mem[gr[b2] + b3/4] = gr[b1];
            // printf("mem[%d] = %d\n", gr[b2] + b3/4, mem[gr[b2] + b3/4]);
            pc += 1;
        }
        else

        if (strcmp(a0, "j") == 0)
            pc = find_label(a1, allorder);
        else

        if (strcmp(a0, "jr") == 0)
            pc = gr[b1];
        else

        if (strcmp(a0, "beq") == 0) {
            if (gr[b1] == gr[b2])
                pc = find_label(a3, allorder);
            else
                pc += 1;
        }
        else

        if (strcmp(a0, "bne") == 0) {
            if (gr[b1] != gr[b2])
                pc = find_label(a3, allorder);
            else
                pc += 1;
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
