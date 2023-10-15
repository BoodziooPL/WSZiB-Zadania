# Bogusław Malik

d<-read.csv("https://artemis.wszib.edu.pl/~basiura/szeregi_d.csv", sep=";")

str(d)

w<-d$szereg55
str(w)

# statystyki opisowe

median(w)
# ponieważ mediana wynosi 30.53 to połowa pomiarów jest poniżej tej wartości
# a połowa powyżej 30.53

quantile(w)[4] - quantile(w)[2]

# min = -1.40
# max = 61.12

# rozstęp 61.12 - (-1.40) = 62.52

# Ikw = 17.57
# III kw = 43.08

# połowa wyników jest pomiędzy 17.57 i 43.08
# Rozstęp międzykwartylny 25.50

# najbardziej typową wartością jest wynik od mediany 30.53 - 25.50 do 30.53 + 25.50

mad(w)
# najbardziej typową wartością jest wynik od mediany 30.53 - 19.02 do 30.53 + 19.02

mean(w)

#wartość przeciętna to 29.96

var(w)
sd(w)

# najbardziej typową wartością jest wynik od mediany 29.96 - 14.83 do 29.96 + 14.83

# przy założeniu losowości próby liczony jest bład standardowy średni

sd(w)/sqrt(length(w))

# w przypadku próby losowej wartość oczekiwana z populacji bedzie wartoscia z przedziału od 29.96 - 0.61 do 29.96 + 0.61

# współczynnik  zmienności = 50% - stosunkowo duża zmienność danych
sd(w)/mean(w)

# probabilistyka

omega<-52*52

sA<-4*52
sB<-52*4
sAiB<-4*4

(pA<-sA/omega)
(pB<-sB/omega)

(pA*pB)
(pAiB<-sAiB/omega)

omega<-choose(52,2)
sA<-choose(13,2)
sB<-choose(16,2)
(pA<-sA/omega)
(pB<-sB/omega)
(pA*pB)

sAiB<-choose(4,2)
pAiB<-sAiB/omega

# prawdopodobieństwo warunkowe

# Jakie jest prawdopodobienstwo ze osoba losowowo wybrana z mojej grupy nie uzywa Maca jesli wiadomo ze nie uzywa iphone.

(3/10)/(5/10)

# całkowite 

PX1 = 0.1; PX2 = 0.4 ; PX3 = 0.5
PApwX1 = 0.05 ; PApwX2 = 0.03; PApwX3 = 0.03
(PA <- PX1*PApwX1+PX2*PApwX2+PX3*PApwX3)

(PB<-PApwX3/(PX1*PApwX1+PX2*PApwX2+PX3*PApwX3))
(PB<-PApwX1/(PX1*PApwX1+PX2*PApwX2+PX3*PApwX3))

#zmienne losowe
# Bernouliego

dbinom(c(1,2,3,4,5,6,7),size=10,prob=0.5)

(P = dbinom(2,size=8,prob=0.02))
(P = sum(dbinom(c(0,1),size=8, prob=0.02)))

# Poisson

dpois(6,lambda = 5)
set.seed(35)
x<-rpois(133,5)
hist(x)
head(x)
mean(x)

# zadanie 7

dpois(c(0,1,2,3),3)
1 - (sum(dpois(0:3,lambda=3)))

#jednostajny
(x<-runif(5,min = -2, max =2))
punif(sort(x), -2,2)


punif(6,min =2,max =14,lower.tail =T)
punif(6,min =2,max =14,lower.tail =F)

y<-runif(133,10,20)
hist(y)
#zadanie 6

dbinom(6,410,0.01)
dpois(6,410*0.01)

# zadanie 9

pnorm(84,mean = 96,sd = 6)
pnorm(108,mean = 96,sd = 6)
pnorm(118,mean = 96,sd = 6,lower.tail = F)

# zadanie 10

pexp(3, rate=1/3,lower.tail=F)
pchisq(15, 5, lower.tail=T)
pt(-.5, 5, lower.tail=T)

#### 
w<-c(147,13,41,45,56,75,1,66,25,21,15,37,159,118,4,14,170,99,8,158,17,55,77,99,101,47,16,33,47)
hist(w)
hist(w,breaks=11)

### wyznaczyć statystyki opisowe dla podanych wyników

# Mediana
# Mediana wynosi 47 co oznacza że połowa pomiarów jest powyżej 47 a druga poniżej 47,

median(w)


# kwartyle
# Pierwszy kwartyl (Q1) wynosi 1, a ostatni 170
quantile(w)


# min & max wartość to 1 oraz 170

min(w)
max(w)

# Odchylenie przeciętne
# Odchylenie przeciętne wynosi około 45.9606
mad(w)

# Średnia
# Średnia wynosi około 60.82759
mean(w)


# Wariancja
# Wariancja wynosi około 2572.576
var(w)


# Odchylenie Standardowe
# Odchylenie standardowe wynosi około 50.75014
sd(w)
# założenie losowości próby i liczenie błędu standardowego sredniej
sd(w/sqrt(length(w)))
# w przypadku próby losowej wartość oczekiwana będzie wartością z przedziału od: 51.40 - 9.42 do 61.32 + 9.42
mean(w)-(sd(w)/sqrt(length(w)))


# Współczynnik zmienności
# Współczynnik zmienności wynosi około 83.43%
sd(w/mean(w))
sd(w)/mean(w)*100 # podanie współczynnika w %%



