#importing library
library(ggplot2)

#-------------------------------------------------------------------------------------

#reading data
df <- read.csv(file.choose())

#-------------------------------------------------------------------------------------

#head and class
head(df)
tail(df)
class(df)
dim(df)
str(df)

#-------------------------------------------------------------------------------------

# crim - per capita crime rate by town.
# zn - proportion of residential land zoned for lots over 25,000 sq.ft.
# indus - proportion of non-retail business acres per town.
# chas - Charles River dummy variable (= 1 if tract bounds river; 0 otherwise).
# nox - nitrogen oxides concentration (parts per 10 million).
# rm - average number of rooms per dwelling.
# age - proportion of owner-occupied units built prior to 1940.
# dis - weighted mean of distances to five Boston employment centres.
# rad - index of accessibility to radial highways.
# tax - full-value property-tax rate per $10,000.
# ptratio - pupil-teacher ratio by town.
# black -1000(Bk - 0.63)^2 where Bk is the proportion of blacks by town.
# lstat - lower status of the population (percent).
# medv - median value of owner-occupied homes in $1000s.

#-------------------------------------------------------------------------------------

df$chas<-as.factor(df$chas)

#-------------------------------------------------------------------------------------

#Crime rate vs Median value
ggplot(df, aes(crim, medv))+
  geom_point()+
  geom_smooth()+
  labs(x ="Per Capita crime rate", 
       y = "Median value of home")

#Pupil-Teacher ration vs Median value
ggplot(df, aes(ptratio, medv))+
  geom_point()+
  geom_smooth()+
  labs(x ="Pupil - Teacher ratio", 
       y = "Median value of home")

#Bounds river or not
ggplot(df, aes(chas, medv))+
  geom_boxplot()

#Age vs Median value
ggplot(df, aes(age, medv))+
  geom_point()+
  geom_smooth()+
  labs(x ="Age", 
       y = "Median value of home")

#Age hist
ggplot(df, aes(age))+
  geom_histogram()+
  labs(x ="Age")

ggplot(df, aes(tax))+
  geom_histogram()+
  labs(x ="Tax")

#
ggplot(df, aes(nox, medv))+
  geom_point()+
  geom_smooth()

ggplot(df, aes(tax, medv))+
  geom_point()+
  geom_smooth()+

#-------------------------------------------------------------------------------------

for (x in colnames(df)){
  if(is.numeric(df[[x]])){
    print(x)
    print(cor(df$medv,df[[x]]))
  }
}

# for (x in colnames(df)){
#   if(class(x)='numeric'){
#     hist(x)
#   }
# }

#------------------------------------------------------------------------------------
for (x in names(df)){
  if(is.numeric(df[[x]])){
    ggplot(df, aes(x, medv))+
      geom_point()+
      geom_smooth(method = 'loess')
  }
  print(x)
}
  
#---------------------------------------------------------------------------------------