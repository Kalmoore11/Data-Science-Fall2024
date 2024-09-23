#Author: Moore, Kaldrian Date: 9/20/2024 Purpose:perform ANOVA test

# Hypothesis: Treatment B is most effective on poison type 3. Expecting significant difference in treatment & poison 
# Null hypothesis: There is no significance in type B and other treatment types

# Where can your input data be stored
# Local drive; Cloud Storage; HTML page

# Import the dummy data from Github public repository in R program

library(dplyr)
install.packages("dplyr", dependencies = TRUE)
PATH <- "https://raw.githubusercontent.com/guru99-edu/R-Programming/master/poisons.csv"
PATH

# Reading the csv file in R
df <- read.csv(PATH)
df
head(df)
