# Variable editing

date<- c("10/24/08", "10/28/08","10/1/08","10/12/08","5/1/09")
manager <- c(1:5)
country <- c("US","US","UK","UK","UK")
gender <- c("M","F","F","M","F")
age <- c(32,45,25,39,39)
q1 <- c(5,3,3,3,2)
q2 <- c(4,5,5,3,2)
q3 <- c(5,2,5,4,1)
q4 <- c(5,5,5,NA,2)
q5 <- c(5,5,2,NA,1)

leadership <- data.frame(manager,date,country,
                         gender,age,q1,q2,q3,q4,q5,
                         stringsAsFactors = FALSE)

#attach()
mydata <- data.frame(x1=c(2,2,6,4),
                     x2=c(3,4,2,8))
attach(mydata)
mydata$sum <- x1+x2
detach(mydata)


#Use transform as to add new column
mydata1 <- transform(mydata, sum=x1+x2, mean=(x1+x2)/2)





#change variable value by another criteria
leadership$age[leadership$age == 39] <- NA
leadership$age[(leadership$age == 39)] <- NA
leadership$agecat[leadership$country == 'US' || leadership$age == 'NA'] <- "Elder"



#sort data:
#leadership <- leadership[order(q3,gender),]
leadership <- leadership[order(gender,-age),]


#select column:
newdata <- leadership[, 4:10]


#which(): functions
newdata <- leadership[1:3,]
newdata <- leadership[which(leadership$gender=="M" & leadership$age>30),]













## 5.0 Culling(discard) some variable:
myvar <- names(leadership) %in% c("q3","q4")
newdata <- leadership[!myvar]





## 5.1 
newdata <- leadership[c(-8,-9)] #The results was same


## 5.2 
newdata <- subset(leadership, gender=="M" & age>25,
                                select = (gender:q4))




