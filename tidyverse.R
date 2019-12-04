##Tidyverse:
####################
#dplyr:            #  
#select()          #
#mutate()          #
#filter()          #
#rename()          #
#arrange()         #
#group_by          #
####################
install.packages("tidyverse")
library(tidyverse)
library(tidyr)
library(dplyr)
library(readxl)

menu <- read_csv("http://joeystanley.com/data/menu.csv")

## 1. Select(): 
menu %>% select(Calories,Sugars)



#Select everything except the "Item":
menu %>% select(-Item)


menu %>% select(-c(Category,Item))
menu %>% select(-Category,-Item)


#keep column:
menu %>% select(Oz:Sugars)


#Re-roder column:
menu %>% select(Oz, Sugars, Fat, Calories)


#Move sugar column to the front: 
menu %>% select(Sugars,everything())






## 2. mutate():
# Add new variable:

menu %>% mutate(Sugars = Sugars/Oz)

#Round to 2 digits:
menu %>% mutate(Sugars = round(Sugars,2))

#If you want to factory a variable
menu %>% mutate(Category = as.factor(Category))

##Another choice for no pipeline
vet <- mutate(veteran, AG = ifelse((age < 60), "LT60", "OV60"),
              AG = factor(AG),
              trt = factor(trt,labels=c("standard","test")),
              prior = factor(prior,labels=c("N0","Yes")))






## 3. Filter():
#Within one variable, select data
menu %>% filter(Category=="Breakfast", Oz>10)

#OR statement:
menu %>% filter(Category=="Breakfast" | Sugars>10, Oz>11)

# %in% statement: 
menu %>% filter(Category %in% c("Meats", "Breakfast"), Oz>10)

'%ni%' <- Negate('%in%')

menu %>%  filter(Category %ni% c("Breakfast","Salad"))






## 4. Rename: 
#rename("new_name"="old_name")

menu %>% rename("New_name"="Category")

#Method 2: (please your test item on the right of the bracket)
names(menu)[names(menu)=="Item"] <- "New_Name"






## 5. arrange():
##
my_data <- as.tibble(iris)
my_data %>% arrange(desc(Sepal.Length))






## 6. group_by:
library(dplyr)
data <- data.frame(year = rep(2016:2017,6),month = seq(1:12),sales=rep(c(10,20,30,40),3))
Planes <- group_by(data,year) %>% summarise(meanSepalLength = mean(Sepal.Length))





## 7. subset() in R base:
df <- subset(menu,select=c(Oz,Sugars,Fat))






#######################################
## Reshaping your data: tidyr        ##
##gather()                           ##
##Separate()                         ##                   
##spread()                           ##
##unite()                            ##
#######################################

vowels_wide <- read_csv("http://joeystanley.com/data/vowels_wide.csv") %>%
  
  print()

vowels_tall <- read_csv("http://joeystanley.com/data/vowels_tall.csv") %>%
  
  print()


## 1. gather() function: ('wide' to 'tall')

##I'll just specify that I don't want the word column used
vowels_wide %>% gather(key="time",value="HZ",-word)





## 2. spread() function: ('tall' to 'wide')
vowels_tall %>% spread(key="time",value="Hz",sep="_")





## 3. unit():
a <- unite(mtcars,"vs_am", c("vs","am"))






## 4, Separate(): 
b <- a %>% separate(vs_am, into=c("vs", "am"), sep='_')
