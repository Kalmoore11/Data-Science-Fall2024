#Author: Moore; Date: 11/20/24; Purpose: Calculate Chi-square analysis

#Read dummy dataset
data_frame <- read.csv("https://goo.gl/j6lRXD")
head(data_frame)
id   treatment  improvement
1  1     treated     improved
2  2     treated     improved
3  3 not-treated     improved
4  4     treated     improved
5  5     treated not-improved
6  6     treated not-improved

# Apply the chi square function
chisq.test(data_frame$treatment, data_frame$improvement, correct=FALSE)
	Pearson's Chi-squared test

data:  data_frame$treatment and data_frame$improvement
X-squared = 5.5569, df = 1,
p-value = 0.01841

