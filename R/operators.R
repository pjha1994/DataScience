x <- 1+2
y <- 1-2
z <- 1*2
a <- 1/2
b <- 2^2
c <- 2**2
d <- 2%%3
e <- 2%/%3
1+2
format(10^5, scientific = FALSE)
typeof(format(10^5, scientific = FALSE))
abs(-5)
log(2)
log(2,base=10)
exp(5)
factorial(5)
pi
options()
options(digits=22,verbose = TRUE)
pi
1/0
-1/0
1/-0
-1/-0
NaN
Inf+5
is.finite(1/0)
is.infinite(1/-0)
Inf/Inf
is.nan(Inf/Inf)
NA+5
a<-NA
is.na(a)
is.nan(NaN)
is.na(NaN)

1||3
1&3
1&&3
5>2  
5>=2
5<2
5<=2
5==2
5!=2
"b">"a"
!TRUE
!(FALSE)
TRUE | TRUE
TRUE & FALSE


#vectorized operations
student.marks <- c(10,20,30,40)

student.marks[1]
k<-mean(student.marks)


sqrt(student.marks)
stduent.marks**2
student.marks/student.marks[3]

s<-c(1,2)
student.marks+s


student.marks<-c(10,20,30,40)
student.marks<-student.marks+5
student.marks>30 & student.marks<50
student.chemisty.marks<-c(20,40,30,50)
student.physics.marks<-c(30,30,50,20)
student.total.marks<-student.physics.marks+student.chemisty.marks
