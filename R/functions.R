totalMarks<-function(mark.1, mark.2){
  mark.1+mark.2
}

class1.student.physics.marks<-c(70L, 75L, 80L, 85L)
class1.student.chemistry.marks<-c(60L, 70L, 85L, 70L)

class1.marks<- totalMarks(class1.student.physics.marks,class1.student.chemistry.marks)
class1.marks
str(class1.marks)

#follow google R style guide

totalMarks(c(1,2,3),c(4,5,6))
totalMarks(mark.2 = c(80,3,45),mark.1 = c(1,1,1))

GetTotalMarks<-function(quiz.marks, viva.marks,assignment.marks = 5L){
  quiz.marks+viva.marks+assignment.marks
}
GetTotalMarks(c(1,2,3),c(4,5,6))
GetTotalMarks(viva.marks = c(1,2,3),quiz.marks = c(4,5,6),assignment.marks = c(97,0,0))

GetTotalMarks<-function(quiz.marks, viva.marks,assignment.marks = 5L,...){
  extra.args<-list(...)
  print(extra.args)
  quiz.marks+viva.marks+assignment.marks+sum(...)
}


GetTotalMarks(viva.marks = c(1,2,3),quiz.marks = c(4,5,6),assignment.marks = c(97,0,0),
              creativity.marks = 34
              )

GetTotalMarks(viva.marks = c(1,2,3),quiz.marks = c(4,5,6),assignment.marks = c(97,0,0),
              creativity.marks = 34, 54, x =90
              )
#lazy evaluation
GetTotalMarks<-function(quiz.marks, viva.marks, extra.marks = average.extra.marks){
  average.extra.marks<- mean(viva.marks)
  quiz.marks+viva.marks+extra.marks
}
GetTotalMarks(c(1,2,3),c(4,5,6),8)

#returning multiple values
GetMarksSummary<-function(quiz.marks, viva.marks){
  total.marks<-quiz.marks + viva.marks
  avg.marks<-mean(total.marks)
  return(list(total = total.marks, average = avg.marks))
}

x<-GetMarksSummary(quiz.marks =c(1,2,3,4) ,viva.marks = c(5,6,7,8))
x$total
x$average

#what does first class objects mean?

GetTotalMarks<-function(quiz.marks, viva.marks){
  quiz.marks+viva.marks
}
GetTotalMarks
formals(GetTotalMarks)
body(GetTotalMarks)

p<- GetTotalMarks
p

GetTotalMarks(quiz.marks = c(1,2,3,4), viva.marks = c(5,6,7,8))
p(c(1,2,3,4),c(5,6,7,8))

#can do named arguments
do.call(GetTotalMarks,list(c(1,2,3,4),c(5,6,7,8)))

#anonymous function

do.call(function(quiz.marks,viva.marks){
  quiz.marks+viva.marks
  },
  list(quiz.marks=c(1,2,3,4)
        ,viva.marks=c(5,6,7,8)
       )
  )
