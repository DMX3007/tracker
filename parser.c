#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

#define FNAME "./story.txt"
#define TRUE 1
#define FALSE 0

int checkString(char* buffer) {
    int len = 0;
    len = strlen(buffer);

    if (len <= 1) {
        return FALSE;
    }
    return len;
}

int checkFlags(int ch, int prev, int flag1, int flag2, int flag3) {
    static int previous = 0;
    int res = (ch == ' ') ? 1 : 0;
    return res;
}

void parse(char* buffer) {
    int flag1 = 0;
    int flag2 = 0;
    int flag3 = 0;

    for (int i = 0; i < strlen(buffer); i++) {
        int ch = 0;
        if ((ch = getchar()) != EOF) {
        }
    }
}

char* createParsedString(char* buffer, int len) {
    int check = checkString(buffer);
    if (check != FALSE) {
        // 2 chars: create additional 2 double quotes and colon and delete a separartor
        char* str = (char*)malloc(len + 5 * sizeof(char));
        }
}

FILE* writeToFile() {
    FILE* file = fopen("data.JSON", "rw");
    return file;
}

FILE* openFile() {
    FILE* file = fopen(FNAME, "r");
    if (file != NULL) {
        printf("We are opened file.\n");
    }
    return file;
}

char* readStrings() {
    char* buffer = 0;
    size_t bufsize = 1000;
    size_t characters;

    buffer = (char*)malloc(bufsize * sizeof(char));

    FILE* file = openFile();

    if (file != NULL) {
        printf("We get the file from function\n");
    }
    do {
        characters = getline(&buffer, &bufsize, file);
        FILE* writedFile = writeToFile();
        createParsedString(buffer, characters);
    } while (characters != EOF);

    printf("%s\n", buffer);
    fclose(file);
}

int main(int argc, char* argv) {
    readStrings();
    return 0;
}