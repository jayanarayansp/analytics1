#Data structures

#vectors----
v1=1:1000 #create vector from 1 to 1000
v2=c(1,4,5,10,2,4,4,5,1,2,2,2,10)
class(v2)
v3=c('hello', 'world')
class(v3)
v4 = c(TRUE,FALSE,T,F)
class(v4)

median(v1)
sd(v1)
hist(v2)
vwomen=women$height
hist(vwomen)
v2[v2>2]

x = rnorm(100,mean = 60,sd=10)
x
plot(x)
hist(x)
barplot(x)
plot(density(x))
abline(v=60)
hist(x,freq = F)
lines(density(x))

hist(x,breaks =4)
length(x)

sd(x)
?sample
x1=10:50
x1
set.seed(1234)
x2= sample(x1)
x2
y1=sample(x1,size = 10)
y1

(gender = sample(c('M','F'),size=14,replace = T,prob = c(.9,.1)))
gender
t1 = table(gender)
prop.table(t1)
t1
pie(t1)



m1#matrix----


m1=matrix(1:24,nrow = 4,byrow = T)

m1

x=runif(60,60,100)
x
plot(density(x))
m1=matrix(x,nrow = 4,byrow = T)
m1

colSums(m1)
rowSums(m1)
m1[m1>70 & m1<90]

(m1[2:4,])


#array----
(rollno=1:60)
(name=paste("student1",rollno,sep = '-'))
name[1:7]
name[c(1,5,2,8,9)]

(gender = sample(c('Male','Female'),size=60,replace = T,prob = c(.6,.4)))

(course=sample(c('BBA','MBA','FPM'),size=60,replace = T,prob = c(.4,.2,.4)))

(marks1=ceiling(rnorm(60,mean = 65,sd=7)))
(marks2=ceiling(rnorm(60,mean = 60,sd=13)))
(grades=sample(c('A','B','C'),size=60,replace = T,prob = c(.4,.2,.4)))

students=data.frame(rollno,name,gender,course,marks1,marks2,grades)
class(students)
students
summary(students)
students[students$gender=='Male',]
students[students$gender=='Male'& students$grades=='B',c('rollno','grades')]
barplot(table(students$course))
barplot(table(students$course),ylim = c(0,50))
text(1:3,table(students$course),ylim = c(0,50)+10,table(students$course),ylim = c(0,50))
str(students)
nrow(students)
names(students)
dim(students)
head(students)




aggregate(students$marks1, by=list(students$gender),FUN=mean)
aggregate(students$marks2, by=list(students$course,students$gender),FUN=max)


library(dplyr)
students %>% group_by(course) %>% summarise(mean(marks2),min(marks1))
students %>% arrange(desc(marks2)) %>% filter(gender=='Male') %>% top_n(5)
students %>% sample_frac(0.1) %>% arrange(course)
(sample_n(students,size = 5))





















library(gsheet)
url='https://docs.google.com/spreadsheets/d/1h7HU0X_Q4T5h5D1Q36qoK40Tplz94x_HZYHOJJC_edU/edit#gid=216113907'
denco = as.data.frame((gsheet2tbl(url)))
str(denco)
head(denco)
