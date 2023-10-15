#include <stdio.h>

int main(){
    int licznik, mianownik;
    float wynik;
    printf("Podaj liczby:");
    scanf("%d", &licznik);
    printf("Podaj liczby:");
    scanf("%d", &mianownik);

    if(mianownik != 0){
        wynik=(float)licznik/mianownik;
        printf("Wynik dzielenie: %.2f\n",wynik);

    } else {
        printf("dzielenie przez zero jest zakazane \n");
    }return 0;
}