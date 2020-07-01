# 1) Create the samples (hint: Use Sample function for questions a to c)
#   a) Rolling a fair die 3000 times
#   b) Choose 27 random numbers from 30 to 70
#   c) Flip a fair coin 1000 times

a<-sample(c(1, 2, 3, 4, 5, 6), 3000, replace=T)
b<-sample(30:70, 27)
c<-sample(c('heads', 'tails'), 1000, replace=T)

#------------------------------------------------------------------------------

# 2) Let x be the normally distributed random variable 
# with mean=0 and standard deviation =30 , with n=100
#   a) Plot the probability distribution of x assuming that the points are
#      normally distributed with mean=0 and standard deviation=30
#   b) Plot the cumulative distribution points.
#   c) Input the probability 0.2 and obtain the number whose cumulative value
#      matches this value (hint: qnorm(0.2, mean=0, sd=30)
#   d) Compute the 50% quantile value using qnorm function

x<-rnorm(100, 0, 30)
y<-dnorm(x, 0, 30)
plot(x, y)

z<-pnorm(x, 0, 30)
plot(x, z)

qnorm(0.2, mean=0, sd=30)

qnorm(0.5, mean=0, sd=30)

#-----------------------------------------------------------------------------

# 3) In the above example observe and briefly explain what happens to the
# normal distribution curve when you change the mean, the variance, or both simultaneously.
#   a. change SD to 15
#   b. change SD to 45
#   c. Change the mean to 50
#   d. Change the mean to -50

x<-rnorm(100, 0, 15)
y<-dnorm(x, 0, 30)
plot(x, y)

x<-rnorm(100, 0, 45)
y<-dnorm(x, 0, 30)
plot(x, y)

x<-rnorm(100, 50, 30)
y<-dnorm(x, 0, 30)
plot(x, y)

x<-rnorm(100, 0, 30)
y<-dnorm(x, 0, 30)
plot(x, y)

#------------------------------------------------------------------------------------

# 4) Draw a histogram of 5000 random variables normally distributed with given
#    SD= 5 and mean=20 (hint : use rnorm)

hist(rnorm(5000, 20, 5))

#------------------------------------------------------------------------------------

# 5) Calculate the probability that a normally distributed random variable with
# mean 22 and variance 25
# a) is greater than 29
# b) is less than 17
# c) is less than 15 or greater than 25

gt_29 <- 1-pnorm(29, 22, 5)
lt_17 <- pnorm(17, 22, 5)
lt_15_or_gt_25 <- pnorm(15, 22, 5)+(1-pnorm(25, 22, 5))

#--------------------------------------------------------------------------------

# 6) If the mean length of a sample of rock cod (a fish variety) is 30 inches and
# the variance is 4 inches, calculate the approximate probability that a certain
# rock cod is 31 in. long. Calculate the probability using the equation

mn<-30
sd<-2
x<-31

print((1/(sd*sqrt(2*pi)))*exp((-1/2)*((x-mn)/sd)^2))
print(dnorm(31, 30, 2))
