
##########################
# missing value          #
#                        #
#                        #
#                        #
#                        #
##########################

## 1. Detect missing value():
y <- c(1,2,3,NA)
is.na(y)

gene <- c("ENSG00000208234","ENSG00000199674","ENSG00000221622")
hsap <- c(0,0,0)
mmul <- c(NA,2,NA)
MMUS <- c(NA,2,NA)
data <- data.frame(gene,hsap,mmul,MMUS)

## 1. Omit the row which has "NA" inside.
new.data <- na.omit(data)





## 2. apply() for missing value:
row.has.na <- apply(data,1,function(x){any(is.na(x))})
final_data <- data[!row.has.na]





## 3. Recoding some value equal to missing value: 99--->NA
leadership$age[leadership$age==99] <- NA






## 3. Example:
x <- c(1,2,NA,3)
y <- x[1]+x[2]+x[3]+x[4]
z <- sum(x)






##We can remove the missing value
x <- c(1,2,NA,3)
y <- sum(x,na.rm =TRUE)
