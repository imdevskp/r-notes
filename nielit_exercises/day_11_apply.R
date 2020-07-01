# 1) Consider the student data in the marks.csv file. Read it into an R variable, Attach
#    additional columns in it to keep student wise and subjectwise totals.

data <- read.csv(file.choose(), row.names = 'Roll.No')

students_mark <- apply(data, 1, sum)
data <- cbind(data, students_mark)
head(data)
  
total_mark <- apply(data, 2, sum)
data <- rbind(data, total_mark)
tail(data)

#-------------------------------------------------------------------------------------------------------

# 2) Let 
list1 <- list(observationA = c(1:5, 7:3),
              observationB = matrix(1:6,nrow=2))

# a) Using lapply() , find the length of list1‘s observations.
len_list <- lapply(list1, length)
len_list

# b) Using lapply() , find the sums of list1 ‘s observations.
sum_list <- lapply(list1, sum)
sum_list

# c) Find the classes of list1 ‘s sub-variables, with lapply()
class_list <- lapply(list1, class)
class_list

# d) Let a user defined function f1 <- function(x) { log10(x) + 1 } 
#    Apply f1 to list1 and obtain the results
f1 <- function(x){
  log10(x) + 1}
fun_list <- lapply(list1, f1)
fun_list

# e) Find the unique values in list1 . (hint: Use function unique)
uniq_list <- lapply(list1, unique)
uniq_list

# f) Find the range of list1 . (hint: Use function range)
range_list <- lapply(list1, range)
range_list

#---------------------------------------------------------------------------------------------------

# 3) Let 
x<-list(A = matrix(1:9, 3),
        B = 1.4,
        C = matrix(1:10, 2),
        D = 21)

# Apply the function mean on x using lapply and sapply
l_mean <- lapply(x, mean)
l_mean

s_mean <- sapply(x, mean)
s_mean

