#1. Using table df, convert it to a data table.
setDT(df)

#2. Using table df, create table df2 with just the fruit and price columns.
df2=df[,.(fruit, price)]

#3. Using table df, rename the columns 'year', 'fruit', 'price' and 'qty' to 'y', 'f', 'p', and 'q'.
name(df)=c('y', 'f', 'p', 'q')

#4. Create a new column, oprice, that will be the price 2 rows before, so that df looks like this
df[, oprice:=shift(price, n=2)]

#5. Create a new column, oprice, that will be the previous year’s price for each particular fruit, 
#   given the table below
df[, oprice:=shift(price, n=1), by=fruit]

#6. Create a new column, oprice, that will be the previous year’s price for each particular fruit, 
#   and a column, oqty, that will be the qty from 2 years ago for each particular fruit given the table below
df[, oprice:=shift(price, n=1), by=fruit]
df[, oprice:=shift(qty, n=2), by=fruit]

#7. Using the table from question #6, create a column total, that is price * qty
df[, total:=price*qty]

#8. Using the table from question # 6, create a table dfs that will be just the years from 2016 and 2017 
#   and just for the fruits; apple, plum, and melon

# (method 1)
dfs=dft[(year==2016 | year==2017) & (fruit=='plum' | fruit=='apple' | fruit=='melon')]

# (method 2)
dfs=dft[year%in%c(2016,2017) & fruit%in%c('apple', 'plum', 'melon')]

# (method 3)
y=c(2016, 2017)
f=c('apple', 'plum', 'melon')
dfs=dft[year%in%y & fruit%in%f]

#9. Using table dft from question # 6, what is the result of the code below
dft[fruit=='orange' & qty==40]

#10. Using table dft from question # 6, what is the result of the code below
dft[fruit=='orange', qty]

#11. Using table dft from question # 6, what is the result of the code below
dft[fruit=='orange', .(qty)]

#12. Using table dft from question # 6, what is the result of the code below
dft[fruit=='orange ', .( price ,qty )]

#13. Using table dft from question # 6, what is the result of the code below
dft[fruit=='orange', sum(price)]

#14. Using table dft from question # 6, what is the result of the code below
dft[year==2017, sum(price), by=fruit]

#15. Using table dft from question # 6, what is the result of the code below
dft[fruit%in%c('apple', 'plum'), sum(price)]

#16. Using table dft from question # 6, what is the result of the code below
dft[fruit%in%c('apple', 'plum'), sum(price), by=year]

#17. Using table dft from question # 6, what is the result of the code below
dft[, price2:=shift(price, n=1)]
dft[year==2017, sum(price2)]

#18. Using table dft from question # 6, what is the result of the code below
dft[, c('price2','price3'):=shift(price, n=1:2)]
dft[year==2017, sum(price3)]

#19. Using table dft from question # 6, what is the result of the code below
dft[, price2:=shift(price, n=1)]
dft[year==2017, sum(price2), by=fruit]

#20. Using table dft from question # 6, what is the result of the code below
dft[, c('price2', 'price3'):=shift(price, n=1:2)]
dft[year==2017, sum(price3), by= fruit]