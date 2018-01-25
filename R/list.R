student.name <-c("abhi","abhi1","abhi2")
student.weight<-c(60.5,72.5,45.2)
student.genders<-c("Male","Male","Female","Female")
student.physics.marks<-c(70L,75L,80L)
student.chemistry.marks<-c(70L,75L, 80L, 85L)

student1<-list(student.name[1], student.weight[1], student.genders[1],student.physics.marks[1],
               student.chemistry.marks[1])
str(student1)
student1
student1[[1]]
student1[1]

stud<-list(name = student.name[1], 
           weight = student.weight[1], 
           gender = student.genders[1],
           physics = student.physics.marks[1],
           chemistry = student.chemistry.marks[1])
str(stud)
stud[1]
stud["name"]
stud[[1]]
stud[["name"]]

stud<-list(name = student.name[1], 
           weight = student.weight[1], 
           gender = student.genders[1],
           marks= c( student.physics.marks[1],student.chemistry.marks[1])
)
str(stud)
stud["name"]
stud[[1]]
stud["marks"]
str(stud["marks"])

typeof(stud[1])
typeof(stud[[1]])

typeof(stud["marks"])
typeof(stud[["marks"]])


stud[1:3]
stud$name
stud[c("physics","chemistry")]
typeof(length(stud))



