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



library(stringr)

## Usage
x <- c("why", "video", "cross", "extra", "deal", "authority")




## Str_subset()
# See the length of character
str_length(x)


# joint multiple strings into a single string
str_c(x, collapse = " , ")


# Extract the element from the begining to the end
str_sub(x, 1, 2)

# Match any single character that is a vowel
str_subset(x, "[aeiou]")

# Count the number of patterns
str_count(x, "[aeiou]")

# Tell you if there's any match to the pattern.
str_detect(x, "[aeiou]")

# Extract the matching components
str_subset(x, "[jjjo]")

# Extracts the text of the match
str_extract(x, "[aeiou]")

# Tells you if there's nay match to the pattern
str_detect(x, "[aeiou]")

# Replace the matchs with new text
str_replace(x, "[aeiou]", "?")

# Splits up a string into multiple pieces

str_split(c("a,b", "c,d,e"), ",")
