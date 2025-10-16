## ----zadanie 1----------------------------------------------------------------
#1
3+5
#2
4-6
#3
8*7
#4
21/5
#5
5**3
#6
49**(0.5)
#7
8**(1/3)
#8
log(7)
#9
log10(6)
#10
log(5, 2)
#11
log(4, 5)
#12
exp(3)
#13
sin(pi*2)
#14
sin(pi/6)
#15
sin(pi/3)
#16
cos(pi/2)
#17
cos(pi/4)


## ----zadanie 2----------------------------------------------------------------
#1
x = 8
x
#2
imie = "Jan"
imie
#3
nazwisko = "Kowalski"
nazwisko


## ----zadanie 3----------------------------------------------------------------
#1
a = c(1, 3, 5)
a
#2
b = c(3:14)
b
#3
ab = c(a,b)
ab
#4
ab[c(6,7,8,9,10)] = c(0, -6, -3, -1, -5)
ab
#5
wek1 <- rep(c(1, 2), times = 3)
wek1
#6
wek2 <- c(rep(c(1), each = 3), rep(c(2), each = 3))
wek2
#7
wek3 <- seq(from = 1, to = 10, by = 2)
wek3
#8
wek4 <- seq(from = 101, to = 110, by = 2)
wek4
#9
wek34 = wek3 - wek4
wek34
#10
wek43 = wek4 - wek3
wek43
#11
wek5 = wek3 + wek4
wek5
#12
wek6 = wek4/wek3
wek6
#13
wek7 = 5*wek4+6*wek3
wek7
#14
wek8 = log(wek4)+cos(wek3)
wek8


## ----zadanie 4----------------------------------------------------------------
#1
x = c(1:7)
x
#2
x[5]
#3
x[2:6]
#4
x[c(2,4)]
#5
x[x<3]


## ----zadanie 5----------------------------------------------------------------
#a
rep(1, times = 8)
#b
rep(c(1, 4), times = 7)
#c
c(rep(3, times = 8), rep(1, times = 5))
#d
x <- rep(5:1, times = 1:5)
x
#e
x <- rep(c(12, 21, 43), times = c(3, 1, 2))
x
#f
x <- rep(seq(from = 1, to = 11, by = 2), each = 2)
x


## ----zadanie 6----------------------------------------------------------------
plon = c(1.52, 1.57, 1.30, 1.62, 1.55, 1.70, 2.05, 1.64, 1.95, 1.80, 1.76, 1.40, 1.92, 2.20)
plon
min(plon)
max(plon)
rozstep = max(plon) - min(plon)
rozstep
sum(plon)
prod(plon)
mean(plon)
median(plon)
var(plon)
sd(plon)
sort(plon)
summary(plon)


## ----zadanie 7----------------------------------------------------------------
4*(1.2**3-sqrt(4.3) + 7.8**(1/5))**2/(log(3.9, 5) + sin(pi/6))


## ----zadanie 8----------------------------------------------------------------
#a
sum(c(100:200)**2)
#b
sqrt(log(10**c(0:5)))

