#####################
#apply()            #
#lapply()           # 
#sapply()           #
#tapply()           #
#####################

#apply() function:
# 1 is row, 2 is column
m1 <- matrix(c(1:10), nrow=5, ncol=6)
a_m1 <- apply(m1, 2,sum)


l1 <- c(4,9,6)
l2 <- c(25,36,49)
matrix1 <- cbind(l1,l2)

matrix1_apply1 <- apply(matrix1, 1, sum)

# a little bit diff, apply() take 1st column in matrix, then return 1st row, then take second column in matrix return second row
matrix1_apply2 <- apply(matrix1, 1, sqrt)

#take 1st column, return first column, then take second column, return second column
matrix1_apply3 <- apply(matrix1, 2, sqrt)


# 1) customer you function
myfunction <- function(x){
  result <- 1+2+sqrt(x)
  return(result)
}

matrix1_apply21 <- apply(matrix1, 1, function(x) myfunction(x))

#or you can write the function within apply directly
matrix1_apply21 <- apply(matrix1, 1, function(x){
  result <- 1+2+sqrt(x)
  return(result)})
                         
                         
matrix1_apply31 <- apply(matrix1, 2, function(x) myfunction(x))

# 2)
myfunction2 <- function(x,y){
  result <- sqrt(x)+y
  return(result)
}

matrix1_apply221 <- apply(matrix1, 1, function(x) myfunction2(x,3))


# 3) 
  myfunction2 <- function(x,y){
result <- sqrt(x)+y
  return(result)
  }
  
# this tell you matrix value which corresponsing to y value, not x anymore  
matrix1_apply221 <- apply(matrix1, 1, function(x) myfunction2(3,y))
  
#Conclusion: apply() use function within the target of matrix




#sapply: return a integer: "double"
matrix1_sapply <- sapply(matrix1, sqrt)



#lapply(): return a independence lists:

matrix1_lapply <- lapply(matrix1, sqrt)
typeof(matrix1_lapply)


movies <- c("SPYDERMAN","BATMAN","VERTIGO","CHINATOWN")
movies_lower <- lapply(movies, tolower)





#do call(): use do call get a biger matrix
t2 <- do.call(rbind, lapply(matrix1, sqrt))
t21 <- do.call(cbind, lapply(matrix1,sqrt))

#we also can design a data frame:
t4 <- data.frame(lapply(matrix1, sqrt))




                          

# tapply(): tapply(Summary variable, Group variable, Function)
gl('number of levels', '# replication', "Length of results")
medical_example <- data.frame(patietID=1:100, age=rnorm(100, mean=60, sd=12), 
                              treatment=gl(2,50), labels=c("Treatment","Control"))

tapply(medical_example$age, medical_example$treatment,mean)
