x <- 10
x
X<-101
X

a.b<-110
a.b
a_b<-10
.a_b<-10
#.23w<-37



xy<-34
xy
assign("xy",100)
xy
x.y<-20
x.y
assign("x.y",34)
x.y
assign('single.quote.var',78)
single.quote.var

#custom and global environment

my.environment<-new.env()
assign("x",198790,my.environment)
my.environment[['x']]
my.environment$x
my.environment$'x'
get('x',my.environment)
get('x',globalenv())
