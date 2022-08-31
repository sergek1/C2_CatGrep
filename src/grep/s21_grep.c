
#include <stdio.h>
#include <dirent.h>
#include <string.h>
#include <regex.h>
#define flag_e 0
#define flag_i 1
#define flag_v 2
#define flag_c 3
#define flag_l 4
#define flag_n 5
#define flag_h 6
#define flag_s 7
#define flag_f 8
#define flag_o 9
void parser_for_flags(int *i, char *argv[], char *shablon, int cases[10], int *counter,
                      int *more_than_1, int *flag);
int fun_cases(const char *argument, unsigned int len, int cases[10]);
void parser_for_file_names(int *j,
                           char *argv[],
                           int cases[10],
                           char *shablon,
                           int *more_than_1,
                           int *count_without_e,
                           int *e_exist,
                           int *count_for_l, int *count_exist_files, int *flag);
void is_empty_file(char *file_name, int cases[10], const char shablon[100], int more_than_1,
                   int *count_exist_files, const int *flag);
void open_file(char *file_name, const int cases[10], const char shablon[100], int more_than_1);
void fun_flag_o(regex_t regex, char *file_name, const int cases[10], char *tmp_line,
                const int *counter, const int *more_than_1, int *gg);
int my_fgets(char *str, FILE *file);
void fun_more_than_1(char *file_name, char *tmp_line, const int cases[10], const int *counter);
void fun_not_more_than_1(char *tmp_line, const int cases[10], const int *counter);

int main(int argc, char **argv) {
  if (argc > 1) {
    char shablon[100];
    int cases[10] = {0}, counter = 0, i = 1, more_than_1 = 0, flag = 0;
    while (i < argc) {
      parser_for_flags(&i, argv, shablon, cases, &counter, &more_than_1, &flag);
      i++;
    }
    int j = 1, count_without_e = 0, e_exist = 0, count_for_l = 0, count_exist_files = 0;
    while (j < argc) {
      parser_for_file_names(&j, argv, cases, shablon, &more_than_1, &count_without_e,
                            &e_exist, &count_for_l, &count_exist_files, &flag);
      j++;
    }
  }
  return 0;
}

void parser_for_flags(int *i, char *argv[], char *shablon, int cases[],
                      int *counter, int *more_than_1, int *flag) {
  char *element_of_argv; element_of_argv = argv[*i];
  if (argv[*i][0] == '-') {
    unsigned int len = strlen(argv[*i]);
    if ((argv[*i][1] == 'e' || argv[*i][1] == 'f') && argv[*i + 1] == NULL) {
      if (argv[*i][1] == 'e') {
        *flag = 1;
      } else if (argv[*i][1] == 'f') {
        *flag = 2;}
    } else {
      if (argv[*i][1] == 'e' && argv[*i + 1] != NULL) {
        fun_cases(element_of_argv, len, cases);
        strncpy(shablon, argv[*i + 1], strlen(argv[*i + 1]));
        shablon[strlen(argv[*i + 1])] = '\0';
        *i += 1; *counter += 1;
      } else if (argv[*i][1] == 'f') {
        fun_cases(element_of_argv, len, cases);
        FILE *file;
        file = fopen(argv[*i + 1], "r");
        if (file == NULL) {
          printf("grep: %s: No such file or directory\n", argv[*i + 1]);
        } else {
          int k = 0, c1;
          c1 = fgetc(file);
          while (c1 != EOF) {
            shablon[k] = (char) c1;
            k++;
            c1 = fgetc(file);}
          shablon[k] = '\0';
          fclose(file);
        }
        *i += 1; *counter += 1;
      } else {
        fun_cases(element_of_argv, len, cases);}}
  } else {
    *counter += 1;
    if (*counter > 2)
      *more_than_1 = 1;}
}
void parser_for_file_names(int *j, char *argv[], int cases[10], char *shablon, int *more_than_1,
                           int *count_without_e, int *e_exist, int *count_for_l,
                           int *count_exist_files, int *flag) {
  if (argv[*j][0] == '-' && (argv[*j][1] == 'e' || argv[*j][1] == 'f')) {
    *e_exist = 1;
    *j += 2;
  }
  if (*e_exist == 1) {
    if (argv[*j][0] != '-') {
      if (cases[flag_h] == 1)
        *more_than_1 = 0;
      *count_for_l += 1;
      is_empty_file(argv[*j], cases, shablon, *more_than_1, count_exist_files, flag);
    }
  } else {
    if (argv[*j][0] != '-') {
      *count_without_e += 1;
      if (*count_without_e == 1) {
        strncpy(shablon, argv[*j], strlen(argv[*j]));
        shablon[strlen(argv[*j])] = '\0';
      } else {
        if (cases[flag_h] == 1)
          *more_than_1 = 0;
        *count_for_l += 1;
        is_empty_file(argv[*j], cases, shablon, *more_than_1, count_exist_files, flag);
      }
    }
  }
}

int fun_cases(const char *argument, unsigned int len, int cases[10]) {
  unsigned int i = 1;
  while (i < len) {
    switch (argument[i]) {
      case 'e': cases[flag_e] = 1;
        break;
      case 'i': cases[flag_i] = 1;
        break;
      case 'v': cases[flag_v] = 1;
        break;
      case 'c': cases[flag_c] = 1;
        break;
      case 'l': cases[flag_l] = 1;
        break;
      case 'n': cases[flag_n] = 1;
        break;
      case 'h': cases[flag_h] = 1;
        break;
      case 's': cases[flag_s] = 1;
        break;
      case 'f': cases[flag_f] = 1;
        break;
      case 'o': cases[flag_o] = 1;
        break;
    }
    i++;
  }
  return *cases;
}

void is_empty_file(char *file_name, int cases[10], const char shablon[100], int more_than_1,
                   int *count_exist_files, const int *flag) {
  if (*flag != 1 && *flag != 2) {
    FILE *file;
    file = fopen(file_name, "r");
    if (file == NULL) {
      if (cases[flag_s] != 1)
        printf("grep: %s: No such file or directory\n", file_name);
    } else if (fgetc(file) == EOF) {
      if (cases[flag_c] == 1) {
        if (more_than_1 == 1) {
          printf("%s:0\n", file_name);
        } else {
          printf("0\n");
        }
      }
      fclose(file);
    } else {
      open_file(file_name, cases, shablon, more_than_1);
      fclose(file);
    }
  } else {
    *count_exist_files += 1;
    if (*count_exist_files == 1) {
      if (*flag == 1) {
        printf("grep: option requires an argument -- e\n");
      } else if (*flag == 2) {
        printf("grep: option requires an argument -- f\n");
      }
    }
  }
}

void open_file(char *file_name, const int cases[10], const char shablon[100], int more_than_1) {
  FILE *file;
  file = fopen(file_name, "r");
  char search[100];
  strncpy(search, shablon, strlen(shablon));
  search[strlen(shablon)] = '\0';
  regex_t regex;
  int compare = 0, counter = 0, regflag = 0, for_flag_c = 0, for_flag_l = 0;
  if (cases[flag_v] == 1)
    compare = REG_NOMATCH;
  if (cases[flag_i] == 1)
    regflag = REG_ICASE;
  regcomp(&regex, search, regflag);
  char tmp_line[1024]; int gg = 0;
  while (my_fgets(tmp_line, file) != 0 && for_flag_l != 1) {
    counter++;
    if (cases[flag_o] == 1 && cases[flag_c] == 0) {
      fun_flag_o(regex, file_name, cases, tmp_line, &counter, &more_than_1, &gg);
    } else {
      int success;
      success = regexec(&regex, tmp_line, 0, NULL, 0);
      if (success == compare) {
        if (cases[flag_l] == 1) {
          for_flag_l = 1;
          printf("%s\n", file_name);} else {
          if (more_than_1 == 1) {
            fun_more_than_1(file_name, tmp_line, cases, &counter);
          } else {
            fun_not_more_than_1(tmp_line, cases, &counter);}}
        for_flag_c++;
      }
    }
  }
  if (cases[flag_c] == 1) {
    if (more_than_1 == 1) {
      printf("%s:%d\n", file_name, for_flag_c);} else {
      printf("%d\n", for_flag_c);}
  }
  regfree(&regex); fclose(file);
}

void fun_flag_o(regex_t regex, char *file_name, const int cases[10], char *tmp_line,
                const int *counter, const int *more_than_1, int *gg) {
  regmatch_t for_flag_o;
  unsigned int step = 0;
  while (1) {
    int success;
    success = regexec(&regex, &tmp_line[step], 1, &for_flag_o, 0);
    if (success == 0) {
      if (cases[flag_l] == 0) {
        if (*more_than_1 == 1) {
          printf("%s:", file_name);
        }
        if (cases[flag_n] == 1)
          printf("%d:", *counter);
        for (unsigned int j = for_flag_o.rm_so + step; j < for_flag_o.rm_eo + step; j++) {
          printf("%c", tmp_line[j]);
        }
        printf("\n");
      } else {
        *gg += 1;
        if (*gg == 1) {
          printf("%s\n", file_name);}}
      step += for_flag_o.rm_eo;
    } else {
      break;
    }
  }
}

int my_fgets(char *str, FILE *file) {
  int flag = 1, i = 0, c;
  while (1) {
    c = fgetc(file);
    if (c == '\n' || c == EOF) {
      str[i] = '\0';
      break;
    }
    str[i] = (char) c;
    i++;
  }
  if (c == EOF && i == 0) {
    flag = 0;
  }
  return flag;
}

void fun_more_than_1(char *file_name, char *tmp_line, const int cases[10],
                     const int *counter) {
  if (cases[flag_c] != 1) {
    if (cases[flag_n] == 1) {
      printf("%s:%d:%s\n", file_name, *counter, tmp_line);
    } else {
      printf("%s:%s\n", file_name, tmp_line);}
  }
}

void fun_not_more_than_1(char *tmp_line, const int cases[10], const int *counter) {
  if (cases[flag_c] != 1) {
    if (cases[flag_n] == 1) {
      printf("%d:", *counter);
      printf("%s\n", tmp_line);
    } else {
      printf("%s\n", tmp_line);}
  }
}
