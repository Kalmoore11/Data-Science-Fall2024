#Author: Moore; Date: 11/20/24; Purpose: Calculate Chi-square analysis

#Read dummy dataset
data_frame <- read.csv("https://goo.gl/j6lRXD")
head(data_frame)

# Apply the chi square function
chisq.test(data_frame$treatment, data_frame$improvement, correct=FALSE)

