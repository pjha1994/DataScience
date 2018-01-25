"a"
'a'
4.36
3
5
TRUE
FALSE
1+7i
1-17i
z<-(1+2i)*(1-2i)
Re(z)
Im(z)

student.name <-c("abhi","abhi1","abhi2")
str(student.name)
is.character(student.name)
typeof(student.name)
student.weight<-c(60.5,72.5,45.2)
str(student.weight)
is.numeric(student.weight)
student.physics.marks<-c(70L,75L,80L)
str(student.physics.marks)
is.numeric(student.physics.marks)
is.integer(student.weight)
student.physics.interest<-c(FALSE,F,TRUE)
str(student.physics.interest)
is.logical(student.physics.interest)
is.numeric(student.physics.interest)
complex.vector<-c(10+2i,10-2i,1-78i)
str(complex.vector)
is.complex(complex.vector)

vector("character", length=4)
#vector("numerical", length=4)
vector("integer", length=4)
vector("logical", length=4)
vector("complex", length=4)
student.physics.marks<-c(70L,75L, 80L, 85L)
student.chemisty.marks<-c(60L, 70L, 85L, 70L)
student.chemisty.marks+student.physics.marks
student.physics.marks>=75


student.names <- c("a","bb","ccc","dddd")
student.names[1]
student.names[2]
student.names[1:3]
student.names[c(T,F,T)]#verify this
student.names[c(T,F,T,F)]
student.names[student.physics.marks>=75]
typeof(student.names[1:3])


#coercions
s.weight<-c(60.5,72.5,45.2,"47.5")
str(s.weight)

as.numeric(student.physics.marks>=75)
as.logical(student.physics.marks>=75)
as.character(student.physics.marks)
as.integer(s.weight)
as.double(s.weight)

as.numeric(student.names)
