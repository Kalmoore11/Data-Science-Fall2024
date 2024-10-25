# Author: Moore, 10/25/24, Purpose: Calculate the Test

# Create 2 dummy groups called x and y, using function rnorm()
x = rnorm(50)
y = rnorm(100)

# create a sequence of 100 points between -4.5 and +4.5
pts = seq(-4.5,4.5,length=100)



# create a density plot for 100 points between -4.5 and +4.5
plot(pts,dt(pts,df=9),col='red',type='l')

lines(density(x), col='green')
lines(density(y), col='blue')
ttest = t.test(x,y)
