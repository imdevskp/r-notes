# 1. Whooping cough is highly contagious. 
# About 80% of unvaccinated children who are exposed to whooping cough will develop the infection. 
# Only 5% of vaccinated children who are exposed to whooping cough will develop the infection.

# a) If 50 unvaccinated children are exposed to whopping cough, what is the
#     probability that 5 will develop the infection?
# b) If 50 vaccinated children are exposed to whopping cough, what is the
#    probability that 5 will develop the infection?
# c) If 50 unvaccinated children are exposed to whopping cough, what is the
#    probability that at most 5 children will develop the infection?
# d) If 50 unvaccinated children are exposed to whopping cough, what is the
#    probability that at least 25 children will develop the infection?
# e) If 50 vaccinated children are exposed to whopping cough, what is the
#    probability that at most 5 children will develop the infection?

a<-dbinom(5, 50, 0.8)
a

b<-dbinom(5, 50, 0.05)
b

c<-pbinom(5, 50, 0.8)
c

d<-1-pbinom(25, 50, 0.8)
d

e<-pbinom(5, 50, 0.2)
e

#--------------------------------------------

# 2. You are conducting an experiment in which you need to examine 40 full grown potato plants.
# You plant 60 of the plants, knowing that 65% of the plants will reach the fully grown state.

#   1. What is the probability that exactly 40 of the 60 plants will be fully grown?
#   2. What is the probability that at least 40 of the 60 plants will be fully grown?

a<-dbinom(40, 60, 0.65)
a

b<-1-pbinom(40, 60, 0.65)
b

#---------------------------------------------------------------------------------------

# 3. Plot the probability density function of a Binomial distribution with 30 identical
# trials and
#  a) Probability of success (p) =0.15.
#     (Hint: use plot(x, y) with x<- seq(0,30, 1) and y its probability values)
#  b) Probability of success(p)=0.4
#  c) Probability of success(p)=0.8.
#     Observe the change in the shape of the plots.

x<-seq(0, 30, 1)
y<-dbinom(x, 30, 0.15)
plot(x, y)

x<-seq(0, 30, 1)
y<-dbinom(x, 30, 0.4)
plot(x, y)

x<-seq(0, 30, 1)
y<-dbinom(x, 30, 0.8)
plot(x, y)

#-----------------------------------------------------------------------------------------

# 4. Calculate the probability that in 60 tosses of a fair coin the head comes up
# a) 20,25 or 30 times
# b) less than 20 times
# c) between 20 and 30 times

eq_20<-dbinom(20, 60, 0.5)
eq_20
eq_25<-dbinom(25, 60, 0.5)
eq_25
eq_30<-dbinom(30, 60, 0.5)
eq_30

a<-eq_20+eq_25+eq_30
a

b<-pbinom(20, 60, 0.5)
b

lt_30<-pbinom(30, 60, 0.5)
c<-lt_30-b
c

#--------------------------------------------------------------------------------------

# 5. Generate a series of Poisson distributions for different λ values. Keep the
# number of items in all the distributions as 100. Observe and explain what
# happens to the distribution when value of λ changes.

a<-rpois(100, 10)
b<-dpois(a, 10)
plot(a,b)

a<-rpois(100, 20)
b<-dpois(a, 20)
plot(a,b)

a<-rpois(200, 100)
b<-dpois(a, 100)
plot(a,b)

#-----------------------------------------------------------------------------------

# 6. The emission of alpha particles by polonium fits a Poisson distribution. Generate
# 2608 numbers as per this distribution with Poisson rate parameter λ =
#   10097/2608. Plot a histogram of the same.

x<-rpois(2608, 10097/2608)
hist(x,breaks=10)

#-------------------------------------------------------------------------------------

# 7. A random variable X has Poisson distribution with mean 7. Find the probability that
# a. X is less than 5
# b. X is greater than 10
# c. X is between 4 and 16

a<-ppois(5, 7)
a
b<-1-ppois(10, 7)
b
c<-ppois(16, 7)-(1-ppois(4, 7))
c

#---------------------------------------------------------------------------

# 8. Suppose in a quiz there are 30 participants. A question is given to
# all 30 participants and the time allowed to answer it is 25 seconds. Find the
# probability of participants responds within 6 seconds?
#   (hint: calculate P(x<6) of uniform distribution. The probability of responding in
#    all seconds are equal (1/25))

punif(30, 6, 25)

