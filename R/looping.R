WriteOnNoteBook<-function(c){
  count<-0
  repeat{
    count<-count + 1
    if(count>c)
      break
    print(paste("writing to : ", count))
  }
}
WriteOnNoteBook(1)


WriteOnNoteBook<-function(total.page.count){
  count<-0
  repeat{
    count<-count + 1
    if(count>total.page.count)
      break
    if(count%%2!=0)
      next
    print(paste("writing to : ", count))
    
  }
}
WriteOnNoteBook(50)

WriteOnNoteBook<-function(total.page.count){
  count<-0
  while(count<total.page.count){
    count<-count + 1
    print(paste("writing to : ", count))
  }
}
WriteOnNoteBook(50)


WriteOnNoteBook<-function(total.page.count){
  count<-0
 for(count in 1:total.page.count){
    print(paste("writing to : ", count))
  }
}
WriteOnNoteBook(50)


