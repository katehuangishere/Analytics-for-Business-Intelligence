library(data.table)
library(ggplot2)

#1. The table below is named dt, write the code for the correct categorical column.
dt[, pop_density:=factor(pop_density,levels=c('Low', 'Medium', 'High'), ordered=T)]

#2. Which data is the closest to being normally distributed?
A

#3. What graph would you use to visualize the relationship between numerical and categorical data?
boxplots, categorical data on x-axis, numberical data on y-axis

#4. Using the graph below, how many math majors are there?
4

#5. Using the graph below, how many sophomores are biology majors?
2

#6. Using the graph in #5 and the table below, how would you show the same graph split by sex?
ggplot(dt, aes(x=year, fill=major))+geom_bar()+facet_wrap(~sex)

#7. What is correlation of the below graph?
0

#8. Which L.I.N.E. assumption is violated, if the scatterplot of the independent and dependent variables have a curved line?
Linearity

#9. Which L.I.N.E. assumption is violated, if the histogram of the residuals are skewed to the side?
Normality

#10. Which L.I.N.E. assumption is violated, if the scatterplot of the residuals and residual Z-scores are curved to the side?
Normality

#11. Which L.I.N.E. assumption is violated, if the scatterplot of the residuals and predicted values show a pattern?
Equal Variance
  
#12. A linear regression model predicting the linear effects of the amount of water used in growing almonds is developed below:
#       y = 56+10x
#    The water data has a range of data from 5 to 90, and is in units of 100 gallons, and the almond data is in pounds. According to the model, how much pounds of almonds will grow, if no water is used?
56 pounds

#13. Using question # 12, how many acres will grow if 1000 gallons is used?
156 pounds

#14. Using question # 12, how many acres will grow if 400 gallons is used?
beyond the scope of the model

#15. Using question # 12, an increase of 100 gallons, increases almond production by how many pounds?
10 additional pounds

#16. A linear regression model predicting the linear effects of the amount of water used in growing almonds is developed below:
#       y = 56+10x
#   The water coefficient has a t-statistic of 5.7 with a p-value of .00000000000002. Do you reject the null hypothesis for the water variable?
qt(.95, 198)

null hypothesis: b1=0
alternative: b1 not equal 0

reject null hypothesis

#17. A linear regression model predicting the linear effects of the amount of water and the amount of sunlight used in growing almonds is developed below:
#       y = 56+10x
#    The data had 200 rows of data. The water coefficient has a t-statistic of 5.7 with a p-value of .00000000000002, the sunlight coefficient has a t-statistic of 12.6 with a p-value of .68. The model has a F-statistic of 5. Do you reject the null hypothesis for the model?
qf(.95, 2, 197)

typo: y=56+10x1+2*2
null: b1=b2=0
alternative: at least one cofficient is not equal 0

reject null hypothesis

#18. Using question #17, can you improve the model?
run the model with just the water as the independent value

#19. Using questions #17, if the adjusted R-square ratio was .05, what does that mean?
only 5% of the variation in my almond data can be explained by the variation in my independent variables data

#20. What is M3[,sum(3)]?
M3=data.table(x=1:5,y=seq (2 ,10 ,2),z=7:3)

#21. What is sum(M2[,2])?
M3=data.table(x=1:5,y=seq (2 ,10 ,2),z=7:3)

#22. What is sum(M2+rep(2,5))?
M3=data.table(x=1:5,y=seq (2 ,10 ,2),z=7:3)

#23. What is M3[y<6,x]?
M3=data.table(x=1:5,y=seq (2 ,10 ,2),z=7:3)

#24. What is sum(M3[,2]+M3[,x])?
M3=data.table(x=1:5,y=seq (2 ,10 ,2),z=7:3)

#25. What is sum(sum(giants)*eagles)?
giants=c(2:5)
cowboys=rep (3 ,4)
eagles=c(6: giants[cowboys [2]])

#26. What is sum(giants + c(eagles,cowboys[giants[1]]))?
giants=c(2:5)
cowboys=rep (3 ,4)
eagles=c(6: giants[cowboys [2]])

#27. What is a?
a = 6:1
a[c(2 ,4)]=c(10 ,20)

#28. What is a?
a = 6:1
a[2:4]= rep (2 ,3)

#29. What is mm?
mm = c(1:9)
mm [2:4]=c(12 ,13)

#30. What is mm?
mm = c(9:1)
mm[c(7 ,3:2) ]=100:1






