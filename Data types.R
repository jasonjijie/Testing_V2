# Differnet types data:

##########################
# numeric()              #  
# factor()               #
# matrix()               #
# array()                #              
# lists()                #
# string()               #       
##########################

#1) numeric:
df <- c(1,2,3,4,5,6)


#2) factor
diabetes <- c("Type1", "Type2","Type1","Type1")
diabetes <- factor(diabetes)

status <- c("Poor","Improved", "Excellent", "Poor")
status <- factor(status, ordered=TRUE)



patientID <- c(1,2,3,4)
age <- c(25,34,28,52)
diabetes <- c("Type1","Type2","Type1","Type1")
status <- c("poor","Improved","Excellent","Poor")
diabetes <- factor(diabetes)
status <- factor(status,ordered = TRUE)
patientdata <- data.frame(patientID,age,diabetes,status)
patientdata$diabetes <- factor(patientdata$diabetes,
                               levels = c("Type1","Type2"),
                               labels = c("male","female"))


#3) matrix()
a <- matrix(c(1:6), nrow=3, ncol=2)


#4) array():
myarray <- array(vector, dimensions, dimnames = "")
dim1 <- c('A1','A2')
dim2 <- c('B1', 'B2', 'B3')
dim3 <- c('C1', 'C2', 'C3', 'C4')
z <- array(1:24,c(2,3,4), dimnames=list(dim1,dim2,dim3))



#5) list() 
g <- "My first list"
h <- c(25,26,18,39)
j <- matrix(1:10, nrow=5)
k <- c("one","two", "three")
mylist  <- list(title=g, ages=h,j,k)
mylist[["ages"]]
mylist[[2]]


#5) How to adding the variable tag

patientID <- c(1,2,3,4)
age <- c(25,34,28,52)
diabetes <- c("Type1", "Type2","Type1", "Type1")
status <- c("poor", "Improved", "Excellent", "Poor")
diabetes <- factor(diabetes)
patientdata <- data.frame(patientID, age, diabetes, status)
names(patientdata)[2] <- "Age at hospitilization (in) years"
patientdata[2]
