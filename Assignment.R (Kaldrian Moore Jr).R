# correlation Test analysis, In class assignment 9/18/24

library("ggpubr")
My_data <-mtcars
My_data
head(My_data)
result <-cor.test(My_data$wt, My_data$gear)
result
