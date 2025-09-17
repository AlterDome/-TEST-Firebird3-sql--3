
//#pragma once

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
//#include <time.h>


///  Для создания строк для INSERT INTO
/// INSERT INTO kassa ( id, name, surname, age ) VALUES (1, 'thhghghgh', 'ghghgghghgh', 56);

static char *rands(char *str, size_t size)
{
    const char charset[] = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJK...";
    if (size) {
        --size;
        for (size_t n = 0; n < size; n++) {
            int key = rand() % (int) (sizeof charset - 1);
            str[n] = charset[key];
        }
        str[size] = '\0';
    }
    return str;
}




/// Главная функция
int main(int argc, char *argv[])
{
FILE * fp = fopen("./111111.txt", "w+");

long z;
//char c[20];


char name[20];
char surname[20];


for (z=1; z < 50001; z++) {

    rands(name, 20);
    rands(surname, 20);

	fprintf(fp," INSERT INTO kassa \( id, name, surname, age \) VALUES \( %d, '%s', '%s', %d\);    \n", z, name, surname, z);

}

fclose(fp);
return 0;
}
///*/////////
