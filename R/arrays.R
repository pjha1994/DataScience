#homogenous data structure and hetergenous data structures
#homogenous: atomic vec, matrix, array, factor
#hetrogenous: list, dataframe
class1.student.physics.marks<-c(70L, 75L, 80L, 85L)
class1.student.chemistry.marks<-c(60L, 70L, 85L, 70L)

class1.student.marks<-cbind(class1.student.physics.marks,class1.student.chemistry.marks)

class1.student.marks

class2.student.physics.marks<-c(70L, 75L, 80L, 85L)
class2.student.chemistry.marks<-c(60L, 70L, 85L, 70L)

class2.student.marks<-cbind(class2.student.physics.marks,class2.student.chemistry.marks)
class2.student.marks

student.marks<-array(c(class1.student.marks,class2.student.marks),dim=c(4,2,2))
student.marks
str(student.marks)
student.marks[2,2,2]
student.marks[1:3,2,]
