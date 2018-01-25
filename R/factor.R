student.genders<-c("Male","Male","Female","Female")
student.genders
student.genders<-c(2L,2L,1L,1L)
student.genders<-factor(student.genders)
student.genders
as.numeric(student.genders)

student.blood.groups<-factor(c("A","AB","O","AB","B","C"), levels = c("A","B","AB","O"))
student.blood.groups
as.numeric(student.blood.groups)
str(student.blood.groups)
