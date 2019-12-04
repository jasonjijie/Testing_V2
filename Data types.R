## Different data expression:

##########################
# numeric()              #  
# matrix()               # 
# factor()               #
# array()                #              
# lists()                #
#                        #
##########################


## 1. Factor():
diabetes <- c("Type1","Type2","Type1","Type1")
diabetes <- factor(diabetes)


status <- c("Poor","Improved","Excellent","Poor")
diabetes <- factor(status,ordered=TRUE)


patientID <- c(1,2,3,4)
age <- c(25,34,28,52)
diabetes <- c("Type1","Type2","Type1","Type1")
status <- c("poor","Improved","Excellent","Poor")
diabetes <- factor(diabetes)
status <- factor(status,ordered = TRUE)
patientdata <- data.frame(patientID,age,diabetes,status)
str(patientdata)


patientdata$diabetes <- factor(patientdata$diabetes,
                               levels = c("Type1","Type2"),
                               labels = c("male","female"))




## 2. matrix():

a <- matrix(c(1:6),nrow=3, ncol = 2)






## 3. array(): 
myarray <- array(vector, dimensions, dimnames = )
dim1 <- c('A1','A2')
dim2 <- c('B1','B2','B3')
dim3 <- c('C1','C2','C3','C4')
z <- array(1:24, c(2,3,4),dimnames = list(dim1, dim2, dim3))






## 4. list()
g <- "My first list"
h <- c(25,26,18,39)
j <- matrix(1:10,nrow = 5)
k <- c("one","two","three")
mylist <- list(title=g, ages=h,j,k)
mylist[["ages"]]
mylist[[2]]






##########################
# Adding variable tag    #  
#                        # 
#                        #
#                        #              
#                        #
#                        #
##########################
## 5.Adding tags:

patientID <- c(1,2,3,4)
age <- c(25,34,28,52)
diabetes <- c("Type1", "Type2", "Type1", "Type1")
status <- c("poor", "Improved", "Excellent", "Type1")
diabetes <- factor(diabetes)
patientdata <- data.frame(patientID, age, diabetes, status)

names(patientdata)[2] <- "Age at hospitilization (in) years"
patientdata[2]





ls()
rm(object1, object2,..)
dim(object)
class(object)
length(object)
