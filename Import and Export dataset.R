##########################
# Import the data        #  
#                        #
#                        #
#                        #              
#                        #                        
##########################
#read_excel()

install.packages("readxl")
library(readxl)

#col_names=FALSE:we don't read tje first row as the conlumn name
df <- read_excel(datafile, sheet="", col_types = type, col_name=FALSE, skip = n)

#read_csv file: make sure download the csv file into desktop first
df2 <- read.csv("....csv")


#header = true: read first row.
install.packages("xlsx")
library(xlsx)
#1)
read_xlsx("C:/Users/JIJIE.XU/Desktop/moeholt1996.xlsx", sheet="Sheet1")

#2)
xlsx::read.xlsx(".xlsx", sheetName = tab, header = TRUE)



##########################
# EXport the data        #  
#                        #
#                        #
#                        #              
#                        #                        
##########################
#Use appended to make two sub tab in same xlsx file
xlsx::write.xlsx(dataset, sheetName = "name1")
xlsx::write.xlsx(dataset, sheetName = "name1", append = TRUE)




## 3. ggasave function
ggsave(paste0(outdir,"Only_placebo_arm.png"),p1,width = 20, height = 20, units = "cm")
