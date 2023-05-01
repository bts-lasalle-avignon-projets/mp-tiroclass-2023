#include <cstdio>
#include <cstdlib>
#include <cstring>

char* convertASCII(const char* input) {
    char* output = new char[strlen(input)/2 + 1];
    int len = strlen(input);

    for (int i = 0; i < len; i += 2) {
        char byte_str[4] = {input[i], input[i+1], '\0'};
        if (input[i] == '1' && i+2 < len) {
            byte_str[3] = byte_str[2];
            byte_str[2] = input[i+2];
            i++;
        }
        char byte = strtol(byte_str, nullptr, 10);
        output[i/2] = byte;
    }
    output[strlen(input)/2] = '\0';

    return output;
}


int main() {
    char input[] = "97989911598"; // Exemple d'entrée
    printf("Sortie : %s\n", convertASCII(input));
    return 0;
}