#include <stdio.h>

int main() {
    int liczba, cyfra, suma = 0;

   
    printf("Podaj liczbę dodatnią: ");
    scanf("%d", &liczba);

    if (liczba < 0) {
        printf("Podana liczba nie jest dodatnia.\n");
    } else {
       
        while (liczba > 0) {
            cyfra = liczba % 10; 
            suma += cyfra; 
            liczba /= 10;
        }


        printf("Suma cyfr podanej liczby wynosi: %d\n", suma);
    }

    return 0;
}

