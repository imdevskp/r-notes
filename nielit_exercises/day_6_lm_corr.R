# 1. Five children 
# aged 2, 3, 5, 7 and 8 years old 
# weigh 14, 20, 32, 42 and 44
# kilograms respectively.
#  a) Find the equation of the regression line of age on weight.
#  b) Based on this data, what is the approximate weight of a six year old child?
#  c) Plot the regression line ( hint: abline(lm(y~x) ))
#  d) Also plot the points (hint: plot(x,y) )

a<-c(2,3,5,7,8)
w<-c(14,20,32,42,44)

r<-lm(w~a)
print(r)

w6<-predict(r, data.frame(a=6))
print(w6)

plot(a,w)
abline(r)



# 2. The success of a shopping center can be represented as a function of the
# distance (in miles) from the center of the population and the number of
# clients (in hundreds of people) who will visit. The data is given in the table below:
#       No. Customer (x) 8  7   6  4  2  1
#           Distance (y) 15 19 25 23 34 40
# a) Calculate the linear correlation coefficient.
# b) If the mall is located 2 miles from the center of the population, how
#    many customers should the shopping center expect?
# c) To receive 5 customers, at what distance from the center of the
#    population should the shopping centre be located?

nc<-c(8,7,6,4,2,1)
dist<-c(15, 19, 25, 23, 34, 40)

r<-cor(nc, dist)
print(r)

plot(dist, nc)
abline(lm(nc~dist))

ce<-predict(lm(nc~dist), data.frame(dist=c(2)))
print(ce)

pop<-predict(lm(dist~nc), data.frame(nc=c(5)))
print(pop)



# 3. The grades of five students in mathematics and chemistry classes are:
#     Mathematics 6     4    8   5   3.5
#     Chemistry   6.5   4.5  7   5   4
# Determine the regression lines and calculate the expected grade in
# chemistry for a student who has a 7.5 in mathematics.

math<-c(6,4,8,5,3.5)
chem<-c(6.5,4.5,7,5,4)

reg<-lm(chem~math)
predict(reg, data.frame(math=c(7.5)))

plot(math, chem)
abline(reg)



# 4. The heights (in centimeters) and weight (in kilograms) of 10 basketball players on a team are:
#   Height(X) 186 189 190 192 193 193 198 201 203 205
#   Weight(Y) 85   85  86  90  87  91  93 103 100 101
# Calculate:
#   a) The regression line of y on x.
#   b) The coefficient of correlation.
#   c) The estimated weight of a player who measures 208 cm.

h<-c(186, 189, 190, 192, 193, 193, 198, 201, 203, 205)
w<-c(85,   85,   86, 90,  87,  91,  93, 103, 100, 101)

r<-lm(w~h)

plot.new()
axis(1)
axis(2)
plot(h,w)
abline(r)

c<-cor(h,w)
print(c)

p<-predict(r, data.frame(h=c(208)))
print(p)



# 5. From the following data of hours worked in a factory (x) and output units
# (y), determine the regression line of y on x, the linear correlation coefficient
# and determine the type of correlation.
# Hours       (X) 80    79    83  84   78   60  82  85  79  84  80 62
# Production  (Y) 300  302  315  330  300  250 300 340 315 330 310 240

x<-c(80, 79, 83, 84 ,78, 60, 82, 85, 79, 84, 80, 62)
y<-c(300, 302, 315, 330, 300, 250, 300, 340, 315, 330, 310, 240)

c<-lm(y~x)
print(c)

plot(x,y)
abline(c)


  
# 6. A group of individuals has been surveyed on the number of hours devoted
# each day to sleeping and watching TV. The responses are summarized in the
# following table:
#   No. of sleeping hours (x) 6 7 8 9 10
#   No. of hours of television (y) 4 3 3 2 1
# a) Calculate the correlation coefficient.
# b) Determine the equation of the regression line of y on x.
# c) If a person sleeps eight hours, how many hours of TV are they
# expected to watch?

x<-c(6,7,8,9,10)
y<-c(4,3,3,2,1)

r<-cor(x,y)
print(r)

c<-lm(y~x)
print(c)

p<-predict(c, data.frame(x=c(8)))
print(p)

plot(x,y)
abline(c)

# 7. The following table summarizes the results of an aptitude test given to
# six employees to determine the correlation between test scores (x) and
# sales in the first month (y) in hundreds of dollars.
# X 25 42 33 54 29 36
# Y 42 72 50 90 45 48
# Find the correlation coefficient and interpret the results.
# Calculate the regression line of y on x and predict the sales of a vendor who
# obtains 47 on the test.

x<-c(25, 42, 33, 54, 29, 36)
y<-c(42, 72, 50, 90, 45, 48)

r<-cor(x,y)
print(r)

c<-lm(x~y)
print(c)

p<-predict(lm(y~x), data.frame(x=c(47)))
print(p)

plot(x,y)
abline(c)
