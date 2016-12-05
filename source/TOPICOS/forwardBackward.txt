v<-c(0,1,2,3)
E<-5
a<-c(1/5,1/15,3/10,1/10,1/5)
b<-c(1/5,2/15,1/10,2/5,1/5)
c<-c(1/5,8/15,1/5,3/20,1/5)
d<-c(1/5,1/5,1/10,3/10,1/5)
e<-c(1/5,1/15,3/10,1/10,1/5)
A<-cbind(a,b,c,d,e)
PI1<-1/6
B<-solve(t(diag(E)-A+1),rep(1,E))

n<-length(v)
lalpha<-lbeta<-matrix(NA,E,n)
prob<-outer(v,PI1,dpois)
f<-B*prob[1,]
sumf<-sum(f)
lsumf<-log(sumf)
f<-f/sumf
lalpha [,1] <- log(f)+lsumf

for(i in 2:n)
 {f <- f %*% A*prob[i,]
 sumf <- sum(f)
 lsumf <- lsumf+log(sumf)
 f <- f/sumf
 lalpha[,i] <- log(f)+lsumf} 
 
 lbeta[,n] <- rep(0,E)
 f <- rep (1/E,E)
 lsumf <- log(E)
 
for (i in (n-1) :1)
 {f <- A%*%(prob[i+1,]*f)
 lbeta[,i] <- log(f)+lsumf
 sumf <- sum(f)
 f <- f/sumf
 lsumf <- lsumf+log(sumf)}
 list(la=lalpha ,lb=lbeta)
