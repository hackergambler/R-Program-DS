#datastructures
#Vectors - One dimensional array

a<-c(1,2,3,4)

x<-c("jaffer","iqbal","Shaik")


#accessing vector elements

x[3]
x[c(2,3)]

matt<-matrix(c(1,2,3,4),nrow=2,ncol=2)
matt
matt1<-matrix(c(1,2,3,4),nrow=2,ncol=2,byrow= TRUE)
matt1

matt[1,]
matt[1,2]
matt1[,2]


arr<-array(1:24,dim = c(2,4,3))
arr
