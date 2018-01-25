#paste method is used for formatting

IsGoodPerformanceByBatch<-function(test.marks){
  average.marks<-mean(test.marks)
  performance.test<-average.marks >= 75
  print(paste("average marks : ", average.marks, "performance.test : ",performance.test))
  if(performance.test){
    print("Brilliant")
    #print(paste(1,"goof"))
  }
  else {
    print("Not good")
  }
  print("Performance evaluationg completed")
}
IsGoodPerformanceByBatch(c(70,75,80,85))
IsGoodPerformanceByBatch(c(50,55,60,70))

test<-function(){
x = 2

if(x == 1){
  print(1)
}
else if(x == 2){
  print(2)
}
else{
  print(3)
}

}
test()

#the if-else needs be in one line if outside of a function.
x = 31
if(x==1) print(1) else if(x==2) print(2) else print("None")

exp = FALSE 
a <- if (exp) 1 else 2
a


#a one line function without braces
a<- function(exp) if(exp) 11 else if(x==1) 12 else "None"
a(exp)


GetMarksSummary<-function(test.marks, summary.type ){
  result<-switch(summary.type,
                 "mean" ={mean(test.marks)},
                 "median" = {median(test.marks)},
                 "variance" = {var(test.marks)},
                 "Not Implemented"
                 )
  result
}
GetMarksSummary(c(70,75,80,85),"mean")
GetMarksSummary(c(70,75,80,85),"median")
GetMarksSummary(c(70,75,80,85),"variance")
GetMarksSummary(c(70,75,80,85),"unknown")

test.marks<-c(70,75,80,NA)
test.marks>=75

ifelse(test.marks>=75,c("a","b","c","d"),c("e","f","g","h"))
ifelse(test.marks>=75,"a","b")
