#Package for importing excel data file
install.packages("readxl")
install.packages("writexl")
install.packages("csvread")

#Once package is installed, you need to call up the library to use the codes in it
library(readxl)
library(tidyverse)
library(ggplot2)
library(writexl)
library(csvread)
library(dplyr)

#Code for importing
Bikes <- read_xlsx("C:/Users/Family/Desktop/UCU/Big Data Analytics with R/Bike_Sales.xlsx")
Bikes
head(Bikes)
#To view dataset
View(Bikes)

#Summary statistics
summary(Bikes)

#Checking the data type
sapply(Bikes, class)

#Continuous variable and continuous variable
# Scatter plot
plot(Bikes$Revenue, Bikes$Profit, main="Revenue vs. Profit", 
     xlab="Revenue", ylab="Profit", col="blue", pch=19)

# Correlation coefficient
cor(df$Revenue, df$Profit, use="complete.obs")

# Linear regression
model <- lm(Profit ~ Revenue, data=Bikes)
summary(model)


#Categorical variable and Continuous variable
# Boxplot: Profit by Product Category
boxplot(Profit ~ Product_Category, data=Bikes, col="lightblue",
        main="Profit by Product Category", ylab="Profit")



#Categorical variable vs categorical variable
# Contingency table: Product Category vs. Customer Gender
table(Bikes$Product_Category, Bikes$Customer_Gender)

# Chi-square test (to check dependency)
chisq.test(table(Bikes$Product_Category, Bikes$Customer_Gender))

# Bar plot (Stacked)
ggplot(Bikes, aes(x=Product_Category, fill=Customer_Gender)) +
  geom_bar(position="fill") + 
  theme(axis.text.x = element_text(angle=45, hjust=1)) +
  ggtitle("Proportion of Genders by Product Category")
