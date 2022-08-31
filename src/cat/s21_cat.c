#include <stdio.h>
#include <dirent.h>
#include <stdlib.h>
#include <string.h>
#define flag_b 0
#define flag_E 1
#define flag_n 2
#define flag_s 3
#define flag_T 4
#define flag_v 5
#define flag_e 6
#define flag_t 7
int parser(const char *argument, unsigned int len, int cases[10], int flag);
char is_empty_file(char *file_name, int cases[10], int *counter);
void open_file(char *file_name, const int cases[10], int *counter);
void fun_flag_s(FILE *file, int *flag, int *fut_char, int *present, const int cases[10], int *counter);
void fun_flag_v(int present);
int main(int argc, char **argv) {
  int cases[10] = {0};
  if (argc > 1) {
    int counter = 0, i = 1, flag;
    while (i < argc) {
      char *element_of_argv;
      element_of_argv = argv[i];
      if (element_of_argv[0] == '-') {
        unsigned int len = strlen(argv[i]);
        if (element_of_argv[1] == '-') {
          if (strcmp(element_of_argv, "--number-nonblank") == 0) {
            *element_of_argv = 'b';
            flag = 1;
            parser(element_of_argv, len, cases, flag);
          } else if (strcmp(element_of_argv, "--number") == 0) {
            *element_of_argv = 'n';
            flag = 1;
            parser(element_of_argv, len, cases, flag);
          } else if (strcmp(element_of_argv, "--squeeze-blank") == 0) {
            *element_of_argv = 's';
            flag = 1;
            parser(element_of_argv, len, cases, flag);
          }
        } else {
          flag = 0;
          parser(element_of_argv, len, cases, flag);
        }
      } else {
        counter++;}
      i++;
    }
    int j = 1;
    int counter1 = 1;
    while (j < argc) {
      if (argv[j][0] != '-' && argv[j][1] != '-') {
        is_empty_file(argv[j], cases, &counter1);}
      j++;
    }
  }
  return 0;
}
int parser(const char *argument, unsigned int len, int cases[10], int flag) {
  if (flag != 1) {
    unsigned int i = 1;
    while (i < len) {
      switch (argument[i]) {
        case 'b': cases[flag_b] = 1;
          break;
        case 'E': cases[flag_E] = 1;
          break;
        case 'n': cases[flag_n] = 1;
          break;
        case 's': cases[flag_s] = 1;
          break;
        case 'T': cases[flag_T] = 1;
          break;
        case 'e': cases[flag_E] = 1, cases[flag_v] = 1;
          break;
        case 'v': cases[flag_v] = 1;
          break;
        case 't': cases[flag_T] = 1, cases[flag_v] = 1;
          break;
      }
      i++;
  }
  } else {
    switch (*argument) {
      case 'b': cases[flag_b] = 1;
        break;
      case 'n': cases[flag_n] = 1;
        break;
      case 's': cases[flag_s] = 1;
        break;
    }
  }
  return *cases;
}
char is_empty_file(char *file_name, int cases[10], int *counter) {
  FILE *file;
  file = fopen(file_name, "r");
  if (file == NULL) {
    printf("cat: %s: No such file directory\n", file_name);
  } else if (fgetc(file) == EOF) {
    fclose(file);
  } else {
    open_file(file_name, cases, counter);
    fclose(file);
  }
  return ' ';
}
void open_file(char *file_name, const int cases[10], int *counter) {
  FILE *file;
  file = fopen(file_name, "r");
  int present, fut_char, flag = 1;
  present = fgetc(file);
  if (cases[flag_n] == 1 && cases[flag_b] == 0) {
    printf("%6d\t", *counter);
    *counter += 1;
  }
  if (cases[flag_b] == 1 && present != '\n') {
    printf("%6d\t", *counter);
    *counter += 1;
  }
  if (cases[flag_E] == 1 && present == '\n')
    printf("$");
  while ((fut_char = fgetc(file)) != EOF) {
    if (cases[flag_s] == 1)
      fun_flag_s(file, &flag, &fut_char, &present, cases, counter);
    if (cases[flag_T] == 1 && present == '\t') {
      printf("^I");
    } else {
      if (cases[flag_v] == 1) {
        fun_flag_v(present);
      } else {
        printf("%c", present);}
    }
    if (cases[flag_n] == 1 && cases[flag_b] == 0 && present == '\n' && fut_char != EOF) {
      printf("%6d\t", *counter); *counter += 1;
    }
    if (cases[flag_E] == 1 && (fut_char == '\n' || (fut_char != EOF && present == EOF)))
      printf("$");
    if (cases[flag_b] == 1 && fut_char != '\n' && present == '\n' && fut_char != EOF) {
      printf("%6d\t", *counter); *counter += 1;
    }
    present = fut_char;
  }
  if (fut_char == EOF && present != EOF)
    printf("%c", present);
  fclose(file);
}
void fun_flag_s(FILE *file, int *flag, int *fut_char, int *present, const int cases[10], int *counter) {
  if (*flag && *fut_char == '\n' && *present == '\n') {
    while ((*fut_char = fgetc(file)) == '\n')
      continue;
    *flag = 0;
    printf("%c", *present);
    if (cases[flag_n] == 1 && cases[flag_b] == 0) {
      printf("%6d\t", *counter);
      *counter+=1;
    }
    if (cases[flag_b] == 1 && *present != '\n') {
      printf("%6d\t", *counter);
      *counter+=1;
    }
    if (cases[flag_E] == 1 && *present == '\n')
      printf("$");
  }
  if (*present == '\n' && *fut_char == '\n') {
    printf("%c", *fut_char);  ///// изначально футчар
    while (*fut_char == '\n')
      *fut_char = fgetc(file);
    if (cases[flag_n] == 1 && cases[flag_b] == 0) {
      printf("%6d\t", *counter);
      *counter+=1;
    }
    if (cases[flag_E] == 1)
      printf("$");
  }
}
void fun_flag_v(int present) {
  if (present >= 0 && present <= 31 && present!= 9 && present != 10) {
    printf("%c", '^');
    present += 64;
  } else if (present == 127) {
    printf("%c", '^');
    present -= 64;
  } else if (present >= 128 && present <= 159) {
    printf("%s", "M-^");
    present -= 64;
  } else if (present > 159 && present != 255) {
    printf("%s", "M-");
    present -= 128;
  } else if (present == 255) {
    printf("%s", "M-^");
    present  -= 192;
  }
  printf("%c", present);
}
