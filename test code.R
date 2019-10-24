##This code was used for testing
diabetes <- c("Type1","Type2","Type1","Type1")
diabetes <- factor(diabetes)
diabetes
status <- c("poor","Improved","Excellent","Poor")
# factor can be used for categorical variable and ordered variable
#For ordered variable
diabetes <- c("Poor","Improved","Excellent","Poor")
diabetes <- factor(status,ordered=TRUE)
diabetes

##Example: 
patientID <- c(1,2,3,4)
age <- c(25,34,28,52)
diabetes <- c("Type1","Type2","Type1","Type1")
status <- c("poor","Improved","Excellent","Poor")
diabetes <- factor(diabetes)
status <- factor(status,ordered = TRUE)
patientdata <- data.frame(patientID,age,diabetes,status)
str(patientdata)
summary(patientdata)

##list: More complex in the data frame
#Create one list:
g <- "My first list"
h <- c(25,26,18,39)
j <- matrix(1:10,nrow = 5)
k <- c("one","two","three")
mylist <- list(title=g, ages=h,j,k)
mylist[["ages"]]
mylist[[2]]






