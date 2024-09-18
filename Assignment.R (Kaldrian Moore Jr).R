# correlation Test analysis, In class assignment 9/18/24

library("ggpubr")
My_data <-mtcars
My_data
head(My_data)
result <-cor.test(My_data$wt, My_data$gear)
result
                mpg cyl disp  hp
Mazda RX4         21.0   6  160 110
Mazda RX4 Wag     21.0   6  160 110
Datsun 710        22.8   4  108  93
Hornet 4 Drive    21.4   6  258 110
Hornet Sportabout 18.7   8  360 175
Valiant           18.1   6  225 105
                  drat    wt  qsec vs
Mazda RX4         3.90 2.620 16.46  0
Mazda RX4 Wag     3.90 2.875 17.02  0
Datsun 710        3.85 2.320 18.61  1
Hornet 4 Drive    3.08 3.215 19.44  1
Hornet Sportabout 3.15 3.440 17.02  0
Valiant           2.76 3.460 20.22  1
                  am gear carb
Mazda RX4          1    4    4
Mazda RX4 Wag      1    4    4
Datsun 710         1    4    1
Hornet 4 Drive     0    3    1
Hornet Sportabout  0    3    2
Valiant            0    3    1
> result <-cor.test(My_data$wt, My_data$gear)
> result

	Pearson's product-moment
	correlation

data:  My_data$wt and My_data$gear
t = -3.9332, df = 30, p-value =
0.0004587
alternative hypothesis: true correlation is not equal to 0
95 percent confidence interval:
 -0.7744638 -0.2944887
sample estimates:
      cor 
-0.583287
