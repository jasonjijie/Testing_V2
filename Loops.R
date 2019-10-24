##########################
# For loop & while loop  #
#                        #
#                        #
#                        #
#                        #
##########################

for (i in 1:10){
  print("hello world")
}






i <- 10
while (i>0) {
  print("hello World")
  i=i-1
}





##########################
# case_when() & Within() #
#                        #
#                        #
#                        #
#                        #
##########################

options(digits = 2)
student <- c("John Davis", "Angela Williams", "Bullwinkle Moose", "David Jones",
             "Janice Markhammer", "Cherly Cushing", "Reuven Ytzrhak", "Greg Knox", "Joel England",
             "Mary Rayburn")

Math <- c(502,600,412,358,495,512,410,625,573,522)
Science <- c(95,99,80,82,75,85,80,95,89,86)
English <- c(25,22,18,15,20,28,15,30,27,18)
roster <- data.frame(student,Math, Science, English, stringsAsFactors =FALSE)
z <- scale(roster[,2:4])
score <- apply(z, 1, mean)
roster <- cbind(roster, score)
y <- quantile(score,c(0.8,0.6,0.4,0.2))

## 1. case_when():
c <- roster %>% mutate(grade=case_when((score<y[3] & score>=y[4])~"D"))





## 2. within():
roster$grade <- rep("NA",10)

b <- within(roster, {
  grade[score<y[1] & score>=y[2]] <- "B"
})






## 3. if else:

ifelse(cond, statement1,statement2)





## 4. swith()

switch(expr, ...)



#Example: 

feelings <- c("sad", "afraid")

for (i in feelings)
  print(
    switch(i,
           happy = "I am gald you are haapy",
           afraid= "There is nothing to fear",
           sad = "Cheer up",
           angry= "Calm dowm now")
  )






##########################
# which loop()           #
#                        #
#                        #
#                        #
#                        #
##########################
a <- c("TT")
b <- c("AA","AT","TT")
a %in% b

a <- which(b=="TT")
a


##How to add the name directly
names(b) <- c("geno1", "geno2", "geno3")


##Search the index
index.TT <- which(b=="TT")
b <- b[-index.TT]
