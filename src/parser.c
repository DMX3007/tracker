#include <locale.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <wchar.h>

#define FNAME "./story2.txt"
#define TRUE 1
#define FALSE 0

int checkFlags(wint_t ch, int flag1, int flag2) {
    int flag = 0;

    if (ch == ' ' && flag1 && flag2) {
        return 3;
    } else if (ch == "—" && flag1) {
        return 2;
    } else if (ch == ' ') {
        return 1;
    }
    return flag;
}

void pasteSeparator(FILE* file) {
    putc('"', file);
    putc(':', file);
    putc('"', file);
}

int processing(int anyFlag, wint_t ch, wint_t prev, int* flag1, int* flag2, int counter, FILE* wfile) {
    static int innerCounter = 0;
    anyFlag = checkFlags(ch, *flag1, *flag2);
    if (anyFlag == 1) {
        *flag1 = TRUE;
        innerCounter = counter;
        return 0;
    }
    if (flag1 && (anyFlag == 2) && (innerCounter + 1 == counter)) {
        *flag2 = TRUE;
        return 0;
    }
    if ((anyFlag == 3) && flag1 && flag2 && (innerCounter + 2 == counter)) {
        pasteSeparator(wfile);
        return 0;
    } else {
        *flag1 = FALSE;
        *flag2 = FALSE;
        putc(ch, wfile);
        return 0;
    }
}

void parse(FILE* file, FILE* wfile) {
    int flag1 = 0;
    int flag2 = 0;

    wint_t ch = 0;
    wint_t prev = 0;
    int anyFlag = 0;
    int counter = 0;

    while ((ch = fgetwc(file)) != WEOF) {
        processing(anyFlag, ch, prev, &flag1, &flag2, counter, wfile);
        counter++;
    }
}

FILE* writeToFile() {
    FILE* file = fopen("data.JSON", "w");
    if (file != NULL) {
        printf("We are opened file.\n");
    }
    return file;
}

FILE* openFile() {
    FILE* file = fopen(FNAME, "r");
    if (file != NULL) {
        printf("We are opened file.\n");
    }
    return file;
}

void prepare() {
    FILE* file = openFile();
    FILE* writedFile = writeToFile();

    if (file != NULL && writedFile != NULL) {
        printf("We open the files from function\n");
    }

    parse(file, writedFile);

    fclose(file);
    fclose(writedFile);
}

int main() {
    setlocale(LC_CTYPE, "ru_RU.UTF-8");
    prepare();
    return 0;
}