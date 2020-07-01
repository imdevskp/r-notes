# 1) Create the following data frame.

Age<-c(25, 31, 23)
Height<-c(177, 163, 190)
Weight<-c(57, 69, 83)
Sex<-c('F', 'F','M')

names<-c('Alex', 'Lilly', 'Mark')

df<-data.frame(Age, Height, Weight, Sex)
row.names(df) <- names

#-------------------------------------------------
  
# 2) Create another data frame with the following data
# Add this data frame as new column to the previous one.
# a) What class of data is in each column?
# b) Calculate the mean of heights of the people
# c) Obtain the BMI of all and add it as a new column to the data frame.
# d) Add another column which shows   whether the person is 
# healthy based on the BMI (greater than 25 = False, else True)

df2<-data.frame(Working=c('Yes', 'No', 'No'))
df<-cbind(df, df2)

sapply(df2, class)
mean_height<-mean(df$Height)
df$BMI<-df$Weight/((df$Height/100)**2)
df$healthy<-df$BMI<25
df

---------------------------------------------
  
# Read Input
# 3) Read data from the file records1.txt to variables r1.
r1<-read.table(file.choose())
r1

----------------------------------------------
  
# 4) Read data from the houses.csv file to a variable
r2<-read.csv(file.choose(), head=T)
r2

----------------------------------------------------

# Array
# 5) Create an array having 2X3X3 dimension, 
# populate the numbers from 1 to 20 in the array. 
# Attach row, column and matrix names
array(1:20, 
      c(2,3,3), 
      dimnames=list(c('r1', 'r2'),
                    c('c1','c2','c3'),
                    c('m1','m2','m3')))

---------------------------------------------------
  
# Built in Data Frames 
# 6) 
# a. From the mtcars data frame, extract the mpg, cyl and hp   to prepare a new data frame.
# b. Combine the first 5 rows and last 5 rows of mtcars to a new data frame
# Functions

mtcars_df<-data.frame(mtcars)
new_df<-mtcars_df[c('mpg', 'cyl', 'hp')]
first_last<-rbind(head(mtcars_df,5), tail(mtcars_df,5))

--------------------------------------------------------

# 7) Create a function that print the sum of 2 integers, with the following features
# a. If any parameter is omitted, while calling the function, take the default values as 1
# b. Provide parameter names as a and b. Call the function by interchanging parameter names.

add_no<-function(a=1, b=1){
  return(a+b)
}
print(add_no(b=6, a=8))

----------------------------------------------------

# R Environment
# 8) Write suitable commands for the following
# a. List the variables in the current R Environment
# b. Print the current working directory
# c. Change the current working directory to /home/{your username}
# d. List the files in the current working directory

ls()
getwd()
setwd('/home/ai17')
list.files()
