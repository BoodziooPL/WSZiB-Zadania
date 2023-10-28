#include <stdio.h>

int main(){
start:
int liczba1, liczba2;
int wynik;
int wybor;

printf("podaj liczbe A: \n");
scanf("%d", &liczba1);
printf("podaj liczbe B: \n");
scanf("%d", &liczba2);

printf("wybierz operacje do wykonania: \n");
printf("1) dodawanie \n");
printf("2) odejmowanie \n");
printf("3) mnozenia \n");
printf("4) dzielenie \n");
printf("5) zamknij program \n");
scanf("%d",&wybor);

if(wybor == 1){
	
	wynik = (int)liczba1+liczba2;
	printf("wynik dodawania to: %.d \n", wynik);
	goto start;
	
} else if (wybor == 2){
	
	wynik = (int)liczba1-liczba2;
	printf("wynik odejmowania to: %.d \n",wynik);
	goto start;

} else if (wybor == 3){
	
	wynik = (int)liczba1*liczba2;
	printf("wynik mnozenia to: %.d \n",wynik);
	goto start;
	
}else if(wybor == 4) {
	
	wynik = (int)liczba1/liczba2;
	printf("wynik dzielenia to: %.d \n",wynik);
	goto start;
	
}else if(wybor == 5){ return 0;}


}
