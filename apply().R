#################
#apply()        #
#lapply()       # 
#sapply()       #
#tapply()       #
#################




## 1. apply(): apply(x,margin,fun)

m1 <- matrix(c(1:10), nrow=5,ncol=6)
a_m1 <- apply(m1, 2,sum)






## 2. lapply(): Return a list.

movies <- c("SPYDERMAN","BATMAN","VERTIGO","CHINATOWN")
movies_lower <- lapply(movies,tolower)
str(movies_lower)






## 3, sapply(): Return a vector
dt <- cars
smn_cars <- sapply(dt, min)






## 4. Difference between sapply() & lapply(): Because max() function doesn't apply to a list but only to a vector.

l <- list("a", "b", c("x", "y"), c("1","3", "4"))
sz <- max(sapply(l, function(x) length(x)))

sz <- max(lapply(l, function(x) length(x)))






## 5. We can built in fun(), and used it inside the apply & sapply()
avg <- function(x){
  ((min(x)+max(x))/2)
}
fun_cars <- sapply(dt, avg)






## 6. tapply(): tapply(Summary variable, Group variable, Function)
gl('number of levels', '# replication', "Length of results")
medical_example <- data.frame(patietID=1:100, age=rnorm(100, mean=60, sd=12), 
                              treatment=gl(2,50), labels=c("Treatment","Control"))

tapply(medical_example$age, medical_example$treatment,mean)
