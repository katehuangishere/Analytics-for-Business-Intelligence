#1. What is the tot?
x=c(1, 5, 6, 3, 2)
tot=10*x-(2+x)
tot

#2. What is x?
x=c(55, seq(1, 10, 2), c(2, 4, 5))
x

#3. What is a?
a=c(55, seq(1, 10, 2), c(2, 4, 5))
a[2]=3
a[8]=6
a

#4. What is t?
b=1:5
t=0
for(i in b)
{
  t=t+b
}
t

#5/6. What is b?
b=c()
a=1:5

for(x in a)
{
  if(a[x]<3)
  {
    b[x]=a[x]+3
  }
  else
  {
    b[x]=a[x]-3
  }
}
b

#7. What is e?
a=2
b=4
c=3
p=1:4
e=p*a^2+p*b+p*(c-2)
e

#8. What is c?
b=1:10
c=b[b<5]
c

#9. What is c?
b=1:10
c=b[b>5 & b<=8]
c

#10. What is x?
b=1:10
x=sum(b[c(3:1, 5, 8)])
x

#11. What is x?
b=1:5
b[c(1, 4)]=b[3:5]
x=sum(b)
x








