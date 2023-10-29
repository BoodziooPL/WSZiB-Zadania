# Bogusław Malik


dane<-read.csv("dane-czasy.csv", sep=" ")
str(dane)

table(dane$wymiar)


w<-dane$czasC[dane$wymiar==32]

length(w)
w

n<-length(w)
m<-mean(w)
s<-sd(w)
alfa <-0.02
e<-qt(1-alfa/2,n-1)


#margines błedu

E <- e*s/sqrt(n)

#otrzymany przedział

m + c(-E, E)


# wniosek : średni czas wykonania programu w środowisku C++ zawiera się w przedziale (1333.215 - 1436.78)z prawdopodobienstwem 0.98

# === zad2 ===

dane<-read.csv("dane-czasy.csv", sep=" ")

w<-dane$czasS[dane$wymiar==32]

length(w)
w

n<-length(w)
m<-mean(w)
s<-sd(w)
alfa <-0.02
e<-qt(1-alfa/2,n-1)


#margines błedu

E <- e*s/sqrt(n)

#otrzymany przedział

m + c(-E, E)

# wniosek : średni czas wykonania programu w środowisku C++ zawiera się w przedziale (1253.384 do 1352.936)z prawdopodobienstwem 0.98


# ===== zad3 =====

n<-64
m<-4.2
sigma<-sqrt(1.44)
alfa = 0.05
e<-qnorm(1-alfa/2)
# margines bledu
E<-e*sigma/sqrt(n)
#przedział ufności

round(m + C(-E,E),2)

#wniosek: średnia długośc rozmowy bedzie w przedziale od 3.91 do 4.49
# z prawdopodobienstwem 0.95 (bo alfa jest 0.05)

# ==== zad 4 ====

n<-64
m<-4.2
sigma<-sqrt(1.44)
alfa = 0.01
e<-qnorm(1-alfa/2)
# margines bledu
E<-e*sigma/sqrt(n)
#przedział ufności

round(m + C(-E,E),2)
diff(round(m + C(-E,E),2))
#wniosek: średnia długośc rozmowy bedzie w przedziale od 3.81 do 4.59
# z prawdopodobienstwem 0.95 


# ==== zad5 ===

dane<-read.csv("dane-ceny.csv")
str(dane)

w<-dane$recznikibawelniane
n<-length(w)
m<-mean(w)
s<-sd(w)
alfa = 0.05
e<-qnorm(1-alfa/2)
#margines bledu
E<-e*s/sqrt(n)
#przedział ufności

round(m + c(-E,E),2)
diff(round(m + c(-E,E),2))

# przedział ufnosci dla sredniej ceny recznika bawelnianego wynosi od 20.42 do 20.97
# prawdopodobienstwo 0.95


# === zad6 ===

dane<-read.csv("dane-ceny.csv")
str(dane)

w<-dane$kaszajeczmienna
n<-length(w)
m<-mean(w)
s<-sd(w)
alfa = 0.01
e<-qnorm(1-alfa/2)
#margines bledu
E<-e*s/sqrt(n)
#przedział ufności

round(m + c(-E,E),2)
diff(round(m + c(-E,E),2))

# przedział ufnosci dla sredniej ceny recznika bawelnianego wynosi od 2.53 do 2.64

## === zad7 ===
n<-694
k<-222
(f <- k/n)
# niesprzyja
(m<-694-222)
# Frakcja : q <- m/n
(q <- m/n)
alfa<-0.1
(SE <- sqrt(f*(1-alfa)/n))
(E<-qnorm(1-0.1/2)*SE)
#przedział ufności
round(f+c(-E,E),2)

#frakcja kobiet współpracujących wyłącznie z mężczyznami będzie w przedziale od 0.29 do 0.35 z prawdopodobienstwem 0.9

# === zad8 ===

n<-694
k<-222
(f <- k/n)
# niesprzyja
(m<-694-222)
# Frakcja : q <- m/n
(q <- m/n)
alfa<-0.05
(SE <- sqrt(q*(1-q)/n))
(E<-qnorm(1-0.1/2)*SE)
#przedział ufności
round(q+c(-E,E),2)

#frakcja kobiet współpracujących wyłącznie z mężczyznami będzie w przedziale od 0.65 do 0.71 z prawdopodobienstwem 0.95


# === zad9=== 

dane<-read.csv("dane-ceny.csv")
str(dane)

w<-dane$recznikibawelniane
n<-length(w)
#m<-mean(w)
s<-1.05
alfa = 0.05
d<-0.2
e<-qnorm(1-alfa/2)
#liczebnosc
(e*e*s*s/(d*d)) # conajmniej 106
(n)

#proba jest wystarczajaca


# === zad10 ===

dane<-read.csv("dane-ceny.csv")
str(dane)

w<-dane$recznikibawelniane
n<-length(w)
#m<-mean(w)
s<-sd(w)
alfa = 0.05
d<-0.3
e<-qt(1-alfa/2,n-1)
#liczebnosc
(e*e*s*s/(d*d)) 
(n)

# === zad11 ===

n<-694
k<-222
(f <- k/n)
# niesprzyja
(m<-694-222)
# Frakcja : q <- m/n
(q <- m/n)
alfa<-0.01

(e<-qnorm(1-0.1/2))
d<-0.01
#Licznosc
e^2*f*(1-f)/d^2
n

#proba wystarczajaca


# === zad12 ===
d <- 0.01
alfa <- 0.05; e<-qnorm(1-alfa/2)
(licz<-e^2/(4*d^2))
#minimalna liczebnosc to 475

# -- zad13 ==

library(MASS)
data("survey")
str(survey)

w<-survey$Height[survey$Sex=="Female"]
length(w)
table(survey$Sex)
sum(is.na(w))
mean(w,na.rm=T)

# Wykonać 
# 1. przedział ufności dla sredniego wzrostu kobiet
# 2. przedział ufności dla sredniego wzrostu mezczyzn
# 3. minimalna liczba próby dla sredniego wzrostu kobiet
# 4. minimalna liczebnosc proby dla sr. wzrostu mezczyzn

# Wykonać 
# 1. Przedział ufności dla średniego wzrostu kobiet
# 2. Przedział ufności dla średniego wzrostu mezczyzn
# 3. Minimalna liczebnosc proby dla średniego wzrostu kobiet
# 4. Minimalna liczebnosc proby dla średniego wzrostu mezczyzn

# Zadanie 1
w<-survey$Height[survey$Sex=="Female"]
n<-length(w)
m<-mean(w,na.rm=T)
s<-sd(w,na.rm=T)
alfa <- 0.05
e<-qnorm(1-alfa/2)
#Margines błędu : 
E<-e*s/sqrt(n)
#Przedział ufności : 
round(m+c(-E,+E),2)

# Zadanie 2
w<-survey$Height[survey$Sex=="Male"]
n<-length(w)
m<-mean(w,na.rm=T)
s<-sd(w,na.rm=T)
alfa <- 0.05
e<-qnorm(1-alfa/2)

E<-e*s/sqrt(n)
 
round(m+c(-E,+E),2)


# Zadanie 3

n<-length(survey$Height[survey$Sex=="Female"])
m.cena<-mean(survey$Height[survey$Sex=="Female"])
s<-sd(survey$Height[survey$Sex=="Female"],na.rm=TRUE)
d <- 5
e<-qt(1-0.05/2,df=n-1)
ceiling((licz<- e^2*s^2/(d^2)))


# Zadanie 4
n<-length(survey$Height[survey$Sex=="Male"])
m.cena<-mean(survey$Height[survey$Sex=="Male"])
s<-sd(survey$Height[survey$Sex=="Male"],na.rm=TRUE)
d <- 5
e<-qt(1-0.05/2,df=n-1)
ceiling((licz<- e^2*s^2/(d^2)))
