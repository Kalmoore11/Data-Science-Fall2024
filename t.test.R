# Author: Moore, 10/25/24, Purpose: Calculate the Test

# Create 2 dummy groups called x and y, using function rnorm()
x = rnorm(50)
y = rnorm(100)

# create a sequence of 100 points between -4.5 and +4.5
pts = seq(-4.5,4.5,length=100)



# create a density plot for 100 points between -4.5 and +4.5
plot(pts,dt(pts,df=9),col='red',type='l',xlab = "Points",ylab = "Density")

lines(density(x), col='green')
lines(density(y), col='blue')
ttest = t.test(x,y)
ttest

Welch Two Sample t-test

data:  x and y
t = -1.239, df = 88.618, p-value
= 0.2186
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
  -0.4928821  0.1142925
sample estimates:
  mean of x   mean of y 
-0.04940688  0.13988792 