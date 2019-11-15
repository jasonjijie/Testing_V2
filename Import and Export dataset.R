## 1. read_excel(): skip n rows
#you have download the csv into your desktop
install.packages("readxl")
library(readxl)
type <- as.character(read_excel(datafile, sheet = "Outcomes", col_names = FALSE,skip=1,n_max=1))
df <- read_excel(datafile, sheet = "", col_types =type, col_names = FALSE, skip = n)

df2 <-read.csv("datafile.csv")


## 2. xlsx packages()
install.packages('xlsx')
library(xlsx)


## Header='TRUE' which mean: we use excel first line as column name, and we read data from the second line''
##Header='FALSE' the first line that we read as the data
df1 <- xlsx::read.xlsx("NOVxxx.xlsx", sheetName = tab, header = TRUE)


#############################
#     Export the dataset    #
#                           #
#                           #                            
#                           #
#############################

xlsx::write.xlsx(dataset, "name.xlsx", sheetName = "name")
xlsx::write.xlsx(dataset, "name,xlsx", sheetName = "name2", append = TRUE)



## 3. ggasave function
ggsave(paste0(outdir,"Only_placebo_arm.png"),p1,width = 20, height = 20, units = "cm")
