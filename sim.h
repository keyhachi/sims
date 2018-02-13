#define SIZE 1000000
#define R_SIZE 32
#define BUF_SIZE 200

int grammer_check(char* a0p, char* a1p, char* a2p, char* a3p, );

typedef enum ins_num Ins_num;

enum ins_num {
  ADD,
  ADDI,
  SUB,
  SUBI
  ,AND
  ,ANDI
  ,MOV
  ,OR
  ,ORI
  ,XOR
  ,NOR
  ,SLL
  ,SRL
  ,SRA
  ,LW
  ,SW
  ,J
  ,JR
  ,BEQ
  ,BNE
  ,RET
  ,PUSH
  ,POP
  ,LI
  ,JAL
  ,PRINT_CHAR
  ,READ_INT
  ,READ_FLOAT
  ,JALR
  ,MFLR
  ,ITOF
  ,FTOI
  ,FST
  ,FLD
  ,FADD
  ,FSUB
  ,FMUL
  ,FDIV
  ,FMOVI
  ,SLT
  ,SLTI
  ,SEQ
  ,FSQRT
  ,FLT
  ,FEQ
  ,BFT
  ,BFF
  ,HLT
};

typedef struct ins* Ins_p;
typedef Ins_p* Ins_array;

struct ins {
  Ins_num name;
  int op1;
  int op2;
  int op3;
}


Ins_array ia;
int gr[32];
float fr[32];
int pc;
char* op0, op1, op2, op3;
