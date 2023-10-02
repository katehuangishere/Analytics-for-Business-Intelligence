setDT(titanic)

#1. Convert the Survived, Pclass and Sex columns into categorical columns.
titanic[, Survived:=factor(Survived)]
titanic[, Pclass:=factor(Pclass, ordered=T)]
titanic[, Sex:=factor(Sex)]

#2. Create a bar graph, where the x-axis is Sex and each individual bar is 
#   divided by those that suvived and didn’t survive.
ggplot(titanic, aes(x=Sex, fill=Survived))+geom_bar()

#3. Create a bar graph, where the x-axis is Pclass and each individual bar is divided
#   by those that suvived and didn’t survive. Create two subgraphs side by side, one for
#   males and the other for females.
ggplot(titanic, aes(x=Pclass, fill=Survived))+geom_bar()+facet_wrap(~Sex)

#4. Change the histogram below into bars of 2
ggplot(titanic , aes(x=Age)) + geom_histogram(binwidth = 2) + theme_bw() +
  labs(y= "Passenger Count",x="Age (5)", title = "Titanice Survival Rates")

#5. You have training data with 10 rows. You want to build a decision tree model that classifies
#   what kind of fruit you have based on the attributes. The target column has 2 pineapples,
#   4 oranges, 3 plums, and 1 cherry. What is the initial entropy score of your data set?
fruits=c("pineapple", "pineapple", "orange", "orange", "orange", "orange", "plum", "plum", "plum", "cherry")
fruit_counts=table(fruits)
fruit_proportions=fruit_counts / sum(fruit_counts)
entropy=-sum(fruit_proportions * log2(fruit_proportions))
entropy

#6.
z = 3:1
a=0
for(i in z)
{
  a=a-i
}
a

#7. 
x = 1:4
b=c(2,4,6,8)
for(i in x)
{
  if((i/2) >3)
  {
    b[NROW(b)]=i/2
  }
  else
  {
    b[(i/2)+2*i]=i/2
  }
}
b

#8. 
z = 1:4
tt=head(mdf$Price ,5)
r=seq (2 ,10 ,2)

for(i in z)
{
  for(x in r[c(1,3,5)])
  {
    tt[NROW(r)]=i+x
  }
}
tt

#9.
v = head(mdf$Price ,9)
z = tail(v,5)

b=c()
for(i in z)
{
  if((i -1) >=3 && (i-4) <=3)
  {
    b[NROW(b)+1]=i
  }
  else
  {
    b=c(b,i)
  }
}
b

#10.
v = c(2,4,10,5,2,8,12)
z=seq(2,12,mdf[mdf$Ticker =="AAPL" & mdf$Date ==201703 , "Price"])
v[c(2:3 ,6)]=z[c(1 ,4:5)]
v

#11.
stock=head(mdf ,4)
stockc = as.vector(stock[,2])
ret=c()

for(i in 1:( NROW(stockc) -1))
{
  ret[i]=( stockc[i+1]/stockc[i]) - 1
}
v=ret[1]
v

#12.
stock=tail(mdf ,NROW(mdf)/4)
stock2=head(stock ,NROW(stock) -1)
stockc = as.vector(stock2[,4])
ret=0

for(i in stockc)
{
  ret=ret+i
}
v=ret
v

#13.
stock = as.vector(mdf$Price)
max_v = max(head(stock ,mdf[mdf$Ticker =="TSLA" & mdf$Date ==201703 , "Price"]))
m_loc = which.max(tail(stock ,-3))
min_v = min(stock[1:m_loc])
v = (max_v/min_v)
v






