# 1. Declare a vector having 4 numbers (8, 4, 5, 3) which indicate the movie preferences of your 20 friends.  Comedy, Action, Romance, Science or Fiction - the type of movie they want to watch today.    Prepare a Pie chart to show the results.   
# a. Show the pie slices in 4 attractive colors
# b. Give count against the slices
# c. Movie type in legend
# d. Order the pie slices in clockwise direction.
# e. Give Heading.
x<-c(8,4,5,3)
leg = c('Thriller', 'Scifi', 'Action', 'Drama')
pie(x,
    col=rainbow(length(x)),
    clockwise = T,
    main='Movie',
    labels = leg,
    radius = 0.5)
legend('topleft', leg, fill = rainbow(4))


# 2. Draw a bar chart for the above data. 
# Provide Main Heading, labels for X Axis and Y Axis 
barplot(x,
        main='Movie',
        xlab='Rating',
        ylab='Movie')


# 3. ABC corporation manufactures and sales 3 products A, B & C.  
# Draw a stacked bar chart to show the annual product sales of the company. 
# The sales for the 4 quarters are to be displayed in the X axis. 
# Use proper legends to show the sales of the 3 products. 

m=matrix(1:12, 3, 4)
rownames(m)<-c('Product A', 'Product B', 'Product C')
colnames(m)<-c('Q1', 'Q2', 'Q3', 'Q4')
barplot(m, col=rainbow(3))
legend('topleft', c('Product A', 'Product B', 'Product C'),
       fill=rainbow(3))


# 4. Draw a histogram showing the Miles/gallon value distributions 
# among the various car models in the mtcars data (Motor Trend Car Road Tests) results.
df<-data.frame(mtcars)
hist(df$mpg,
     col='grey')


# 5. Create a graph using the basic steps plot.new()
# a. Draw x axis  and y axis
# b. Mark  5 random points (declare them as  X and Y vectors)
# c. Draw line joining them
# d. Draw a horizontal line touching the topmost point
# e. Draw a vertical line touching the rightmost point
plot.new()
plot.window(xlim=c(1,11), ylim=c(1,11))
axis(1)
axis(2)
x=sample(1:10, 5)
y=sample(1:10, 5)
plot(x, y)
lines(x, y)
abline(v=max(x))
abline(h=max(y))


# 6. Let the following be the response of the usage of 2
# drugs A & B against dosage. Draw Line chart showing the responses, 
# with both data in the same graph 
# drugA <- c(16, 20, 27, 40, 60) 
# drugB <- c(15, 18, 25, 31, 40) 
# hint(use plot function to plot the response of 
# drugA and lines function to plot drug B in the same graph)
drugA <- c(16, 20, 27, 40, 60) 
drugB <- c(15, 18, 25, 31, 40)
plot.new()
plot(drugA)
lines(drugB)


# 7. Use the built in data frame airquality for the following question.
# Draw boxplot to show the distribution of temperature values against month.
boxplot(Ozone~Month,
        data=airquality)


# 8. Use the built in data frame   iris for the following question
# Draw scatter diagram showing the distribution of Sepal.
# Length & Sepal.Width values (hint:use plot() function to draw scatterplot)
df<-iris
plot(df$Sepal.Length, df$Sepal.Width)


# 9. Use the built in data frame iris for the following question.
# Draw a Scatterplotmatrix for comparing the values of 
# Sepal.Length, Sepal.Width, Petal.Length & Petal.Width
# (hint: use pairs()  function )
pairs(~Sepal.Length+Sepal.Width+Petal.Length+Petal.Width, 
      data=iris)
