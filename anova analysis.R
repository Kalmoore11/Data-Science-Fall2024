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

[1] "https://raw.githubusercontent.com/guru99-edu/R-Programming/master/poisons.csv"
> # Reading the csv file in R
> df <- read.csv(PATH)
> df
    X time poison treat
1   1 0.31      1     A
2   2 0.45      1     A
3   3 0.46      1     A
4   4 0.43      1     A
5   5 0.36      2     A
6   6 0.29      2     A
7   7 0.40      2     A
8   8 0.23      2     A
9   9 0.22      3     A
10 10 0.21      3     A
11 11 0.18      3     A
12 12 0.23      3     A
13 13 0.82      1     B
14 14 1.10      1     B
15 15 0.88      1     B
16 16 0.72      1     B
17 17 0.92      2     B
18 18 0.61      2     B
19 19 0.49      2     B
20 20 1.24      2     B
21 21 0.30      3     B
22 22 0.37      3     B
23 23 0.38      3     B
24 24 0.29      3     B
25 25 0.43      1     C
26 26 0.45      1     C
27 27 0.63      1     C
28 28 0.76      1     C
29 29 0.44      2     C
30 30 0.35      2     C
31 31 0.31      2     C
32 32 0.40      2     C
33 33 0.23      3     C
34 34 0.25      3     C
35 35 0.24      3     C
36 36 0.22      3     C
37 37 0.45      1     D
38 38 0.71      1     D
39 39 0.66      1     D
40 40 0.62      1     D
41 41 0.56      2     D
42 42 1.02      2     D
43 43 0.71      2     D
44 44 0.38      2     D
45 45 0.30      3     D
46 46 0.36      3     D
47 47 0.31      3     D
48 48 0.33      3     D
> head(df)
  X time poison treat
1 1 0.31      1     A
2 2 0.45      1     A
3 3 0.46      1     A
4 4 0.43      1     A
5 5 0.36      2     A
6 6 0.29      2     A
# Apply ANOVA test to columns time
anova_one_way <- aov(time~poison, data = df)
summary(anova_one_way)
Df Sum Sq Mean Sq F value
poison       1 0.9316  0.9316   20.67
Residuals   46 2.0735  0.0451        
Pr(>F)    
poison      3.96e-05 ***
  Residuals               
---
  Signif. codes:  
  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05
‘.’ 0.1 ‘ ’ 1
