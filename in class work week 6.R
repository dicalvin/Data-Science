#Calling up the libraries
library(tidyverse)
library(ggplot2)
library(writexl)
library(csvread)
library(dplyr)
library(ggplot2)



# Importing the Dataset
credits_data <- read.csv("C:/Users/Family/Desktop/UCU/Big Data Analytics with R/Assignment 1/ida_credits_to_uganda_01-11-2024.csv")

#check a preview of the data
head(credits_data)

#View the dataset
View(credits_data)

#setting the working directory
setwd("C:/Users/Family/Desktop/UCU/Big Data Analytics with R")


## checking for how many loans are fully repaid
credits_data$Credit.Status

sum(credits_data$`Credit.Status` %in% "Fully Repaid")


## subsetting the first 10 columns
subset1 = credits_data[, 1:10]

View(subset1)

write.csv(subset1, "subset_data.csv")



## median original principal amount asked for each project name

median_principal = aggregate(credits_data$Original.Principal.Amount..US.., 
                             by = list(credits_data$Project.Name), 
                             FUN = median, na.rm = TRUE)
colnames(median_principal) = c("Project Name", "Median Original Principal Amount(US $)")
View(median_principal)


#Saving the above as an excel file
install.packages("openxlsx")
library(openxlsx)

write.xlsx(median_principal, "median_principal.xlsx")




