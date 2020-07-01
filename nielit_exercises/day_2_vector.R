# 1) Create the vectors:
#   (a) (1, 2, 3, . . . , 19, 20, 19, 18, . . . , 2, 1)
#   (b) (4, 6, 3) and assign it to the variable x
a<-c(c(1:20), c(19:1))
b<-c(4,6,3)


# 2) Using rep to create the following vectors.
#   (a) (4, 6, 3, 4, 6, 3, . . . , 4, 6, 3) where there are 10 occurrences of 4.
#   (b) (4, 6, 3, 4, 6, 3, . . . , 4, 6, 3, 4) where there are 
#     11 occurrences of 4, 
#     10 occurrences of 6 and 
#     10 occurrences of 3.
#  (c) (4, 4, . . . , 4, 6, 6, . . . , 6, 3, 3, . . . , 3) where there are 
#     10 occurrences of 4, 
#     20 occurrences of 6 and 
#     30 occurrences of 3.
d<-rep(c(4,6,3), 10)
e<-rep(c(4,6,3), 10, length.out=31)
f<-c(rep(4,10), rep(6,20), rep(3,30))


# 3) Assume that you are interested in cone-shaped structures, and have measured the
#    height and radius of 6 cones. Make vectors with these values as follows:
#    R <- c(2.27, 1.98, 1.69, 1.88, 1.64, 2.14)
#    H <- c(8.28, 8.04, 9.06, 8.70, 7.58, 8.34)
#    a) Make a vector with the volumes of the 6 cones. (Volume=1/3 pi R 2 H)
#    b) Round the values to 2 decimal points and store into a vector
#    c) Find out the the minimum and maximum volumes
#   (hint: use the functions min and max)
R <- c(2.27, 1.98, 1.69, 1.88, 1.64, 2.14)
H <- c(8.28, 8.04, 9.06, 8.70, 7.58, 8.34)
v <- (1/3)*pi*(R^2)*H
v_rounded<<-round(v, 2)
v_min<-min(v_rounded)
v_max<-max(v_rounded)


# 4) Create 3 Vectors A,B & C with the following contents.
#    A should contain a Random sample of 250 numbers between 0 and 999.
#    (hint: use the command sample(0:999,250))
#    B should contain all numbers from A which are greater than 900
#    (hint:use which command & subsetting with index vector)
#    C should contain all the elements from B in sorted order.
#    (hint:use the function sort())
A<-sample(0:999, 250)
B<-A[which(A>900)]
C<-sort(B)


# 5) Assume that we have registered the height and weight for four people: 
#    Heights in cm are 180, 165, 160, 193; 
#    weights in kg are 87, 58, 65, 100. Make two vectors, height and weight, with the data. 
#    The body mass index (BMI) is defined as (weight in kg/(height in m) 2 ).
#    a) Make a vector with the BMI values for the four people.
#    b) Also make a vector with the weights for those people who have a BMI > 25.
#    c) Find the average BMI Value.
height<-c(180, 165, 160, 193)
weight<-c(87, 58, 65, 100)
bmi<-weight/((height/100)^2)
bmi_gt_25<-bmi[which(bmi>25)]
avg_bmi<-mean(bmi)


# 6) Create a vector, marks (out of 50) of 10 students. Compute the following.
#    (a) Mean of these marks and store into a variable p1
#    (b) Median of these marks and store into a variable p2
#     Hint: Use the functions mean and median on the vector.
marks<-c(34, 25, 33, 50, 33, 43, 35, 50, 48, 43)
p1<-mean(marks)
p2<-median(marks)


#7) In an experiment the dry weight has been measured for 8 plants grown under certain
#   conditions (the values are given below). Try the following commands in order to make
#   a vector with the values and compute various sample statistics:
#   dry <- c(77, 93, 92, 68, 88, 75, 100)
# sum(dry)
# length(dry)
# mean(dry)
# sum(dry)/length(dry) ## Equation for mean, cross check value with Mean above
# sort(dry)
# median(dry)
# sd(dry)
# var(dry)
# ##Variance
# sd(dry)^2
# min(dry)
# max(dry)
# summary(dry)
dry <- c(77, 93, 92, 68, 88, 75, 100)
sum(dry)
length(dry)
mean(dry)
sum(dry)/length(dry)
sort(dry)
median(dry)
sd(dry)
var(dry)
sd(dry)^2
min(dry)
max(dry)
summary(dry)


# 8) Create a vector N of 10 random numbers between 1 & 20. 
#    (Use the Sample function ith replace=True). 
#    Print the numbers in N which are divisible by 2.
#    (hint: Use modulo operator %%.)
N<-sample(1:20, 10, replace=T)
div_by_2<-N[which(N%%2==0)]                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     