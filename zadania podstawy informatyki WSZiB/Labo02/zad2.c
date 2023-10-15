 #include <stdio.h>

int main(){

        int liczba1, liczba2;
        printf("Podaj pierwszą liczbę do porównania: ");
        scanf("%d", &liczba1);
        printf("Podaj drugą liczbę do porównania: ");
        scanf("%d", &liczba2);

        if(liczba1 > liczba2) {
                printf("Wieksza liczba: %d\nMniejsza liczba: %d\n", liczba1, liczba2);
        }else if (liczba1 < liczba2) {
                printf("wieksza liczba: %d\nMniejsza liczba: %d\n", liczba2, liczba1);
        } else {
                printf("Liczby sa rowne: \n");
        }
        return 0;
}