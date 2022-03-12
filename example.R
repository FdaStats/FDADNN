 library(pracma)
 library(MASS)
 #############2D####################
 d=2; N=c(3, 5); n=50 
 ## Generate data
 Grid=list()
 Grid[[1]]=seq(1/N[1],1.00,length.out = N[1])
 Grid[[2]]=seq(1/N[2],1.00,length.out = N[2])
 x_data.1=as.vector(replicate(N[2], Grid[[1]]))
 x_data.2=as.vector(t(replicate(N[1], Grid[[2]])))
 x_train=cbind(x_data.1, x_data.2)
 ## True function
 y_train.true=(-8)*1/(1+exp(cot(x_data.1^2)*cos(2*pi*x_data.2)))
 ## Covariance structure
 cov=array(NA, c(N[1]*N[2], N[1]*N[2], 2))
 for(i in 1:(N[1]*N[2])){
  for(j in 1:(N[1]*N[2])){
    cov[i,j,1]=cos(2*pi*(x_data.1[i] - x_data.1[j]))
    cov[i,j,2]=cos(2*pi*(x_data.2[i] - x_data.2[j]))
  }
 }
 Data=list()
 for(i in 1:n){
  error=mvrnorm(1, rep(0, N[1]*N[2]), (cov[,,1]+cov[,,2]))+rnorm(1, 0, 1)
  Data[[i]]=matrix(error, N[1], N[2])+matrix(y_train.true, N[1], N[2])
 }
 FDADNN(Data, d, Grid, N, n, 3, 100, 0.01, 100, 32, 5)
 
 #############3D####################
 d=3; N=c(2, 3, 4); n=50
 Grid=list()
 Grid[[1]]=seq(1/N[1],1,length.out = N[1])
 Grid[[2]]=seq(1/N[2],1,length.out = N[2])
 Grid[[3]]=seq(1/N[3],1,length.out = N[3])
 x1=rep(rep(Grid[[1]],N[2]*N[3]))
 x2=rep(rep(Grid[[2]],each=N[1]),N[3])
 x3=rep(Grid[[3]],each=N[1]*N[2])
 x_train=cbind(x1,x2,x3)
 y_train.true=exp(1/3*sin(2*pi*x1)+1/2*x2+sqrt(x3+0.1))
 cov=array(NA, c(N[1]*N[2]*N[3], N[1]*N[2]*N[3], 3))
 for(i in 1:(N[1]*N[2]*N[3])){
  for(j in 1:(N[1]*N[2]*N[3])){
    cov[i,j,1]=cos(2*pi*(x1[i] - x1[j]))
    cov[i,j,2]=cos(2*pi*(x2[i] - x2[j]))
    cov[i,j,3]=cos(2*pi*(x3[i] - x3[j]))
   }
 }
 Data=list()
 for(i in 1:n){
  error=mvrnorm(1, rep(0, N[1]*N[2]*N[3]), (cov[,,1]+cov[,,2]+cov[,,3]))+rnorm(1, 0, 1)
  Data[[i]]=array(error, c(N[1], N[2], N[3]))+array(y_train.true, c(N[1], N[2], N[3]))
 }
 m3=FDADNN(Data, d, Grid, N, n, 3, 100, 0.01, 100, 32, 5)
 ## 3d result returns the viewing transformation matrix. 
 library(plot3D)
 scatter3D(x1,x2,x3,colvar = as.vector(m3$estimation), pch=16, phi=0, theta=120, xlab="x1", ylab="x2", zlab="x3")