student.names<-c("Raj","Rahul","dfouh","fuibd")
student.weights<-c(60.5, 72.5, 45.2, 47.5)
student.genders<-c("Male","Male","Female","Female")
student.physics.marks<-c(70L, 75L, 80L, 85L)
student.chemistry.marks<-c(60L, 70L, 85L, 70L)

students<-data.frame(student.names,student.weights,student.genders,
                     student.physics.marks,student.chemistry.marks,stringsAsFactors = FALSE)
typeof(students)
students
str(students)

students[1]
typeof(students[1])
students[[1]]
typeof(students[[1]])
students[["student.names"]]
typeof(students["student.names"])
students$student.names
students[1:3]
students[c("student.physics.marks","student.chemistry.marks")]
students[1,2]
students[1:3,1:2]
students[c(1,2),c(1,3)]
students[1,]
students[,1]
students[c(T,F,T,F)]
students[c(T,F,T,F),]
students[student.genders == "Male"]
students[student.genders == "Male",]
students[student.physics.marks >= 75,]
