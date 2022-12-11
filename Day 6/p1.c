#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main() {
    // idk hwo big this is supposed to be and dynamic memory allocation is cringe ¯\_(ツ)_/¯
    char data[10000];
    gets(data);
    int index = -1000;
    for (int i = 0; i < strlen(data)-3; i++) {
        int works = 1;
        int freq[26];
        for (int j = 0; j < 26; j++)
            freq[j] = 0;
        for (int j = 0; j < 4; j++) {
            freq[data[i+j]-'a']++;
            if (freq[data[i+j]-'a'] == 2) {
                works = 0;
                break;
            }
        }
        if (works) {
            index = i;
            break;
        }
    }
    printf("%d\n", index + 4);
    return 0;
}