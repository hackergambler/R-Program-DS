library(dplyr)
mtcars<-mtcars

#July_26_day6
#ANOVA : Analysis of variance: is the test to find out the group means
#whether group means are same or different 
#H0: in anova is always that there is no difference between means and 
#H1: is always that the means are not all equal
#DEP VAR MUST BE : CONTINOUS VAR 
#INDEP VAR MUST BE  : CATEGORICAL VAR
library(dplyr)
mtcars<- mtcars
#dep var : mpg : cont
#indep var : gear : 
str(mtcars)
#convert gear to factor 
mtcars$gear<- as.factor(mtcars$gear)
#anova analysis 
mtcars1<- aov(mtcars$mpg ~ mtcars$gear)
summary(mtcars1)
#palue : 0.000295 : it is less than 0.05 , so ho is rejected , h1 is accepted 
# h1 : means are not all equal 
#TukeyHSD test : TukeyHONESTSIGNIFICANT TEST WILL TELL WHICH ONE IS DIFFERENT and WHICH ONE IS SAME
mtcars2<- TukeyHSD(mtcars1)
mtcars2

library(readr)
survey_data <- read_csv("C:/Users/Jaffer/R-Program-DS/survey_data.csv")
View(survey_data)
x<-table (survey_data$Smoke,survey_data$Exer)
chisq.test(x)

Result:
  
  chisq.test(x)

Pearson's Chi-squared test

data:  x
X-squared = 5.4885, df = 6, p-value = 0.482
0.482 >0.05 ->(cannot reject null) - accept null hypothesis - H0 - smoking habits of students are independent of their excercise

#table gives the counts

#Chi Square:
  
#chisquare = summation (obs fre-exp frq)2/exp freq
#1st row : obs freq : 9 
#cal exp freq : row total * col total / 100 
#26*32/100 = 8.32 



----------------------------------------------------
  
  Chisquare real time example

----------------------------------------------------
  from Ranjith Rajmohan to All Participants:
  yes
from Deepti (Faculty) to All Participants:
  chisquare = summation (obs fre-exp frq)2/exp freq
1st row : obs freq : 9 
cal exp freq : row total * col total / 100 
26*32/100 = 8.32 
cal chisquare : 18.6 ( 9 - 8.32)2/8.32+(10 - 7.02)2/7.02+ .....................)
tabulated chisquare : 
  dof : (r-1) (c-1) 
: (3-1)(3-1) = 4
0.05 : 
  chisquare tabu at 0.05 , 4 : 9.4 
chi _ tab : 9.4 
chi_cal : 18.6 
compare these values : 
  cal_chi > tab_chi : yes 
18.6 > 9.4 : 
  reject ho and accept your h1 : 
  h1 : 
  ho : the service quality is indep on the salaries of people waiting tables 
h1 : the service quality is dep on the salaries of people waiting tables 
