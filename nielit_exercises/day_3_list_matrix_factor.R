# 1) Create a List named student with the following data. Give the names Name, RollNo, Gender &
  # Marks for the items
  # a) Name
  # b) Roll No
  # c) Gender
  # d) Marks for 5 subjects.
student<-list(name="James", rollno=15, gender="Male", marks=c(35, 44, 50, 36, 47))

# From the above list
  # Compute the average of marks
  # Store the Roll No and Marks to another list.
  # Modify the mark for the 5 th subject as 100
  # Prepare a new vector with the names of the 5 subjects
  # Attach it as the last item in the list
avg_marks<-mean(student[['marks']])
no_and_mark<-student[c('rollno', 'marks')]
student[['marks']][5]<-100
new_marks<-c('math','phy','chem','bio','history')
student[['subject']]<-new_marks


# 2) Create a 2X2 matrix A with some sample data.
# a) Calculate B= 2A
A<-matrix(1:4,2,2,byrow=T)
B<-2*A


# 3. Create the matrix
# a) Check that A 3 = 0 where 0 is a 3 × 3 matrix with every entry equal to 0.
m<-matrix(c(1,1,3,5,2,6,-2,-1,-3), 3, 3, byrow=T)
m3<-m%*%m%*%m


# 4) Create the following matrix B with 15 rows:
#   Calculate the 3 × 3 matrix B T B.
tens=c(10, -10, 10)
rep_tens=rep(vals, 15)
mat_b<-matrix(rep_tens, ncol=3, nrow=15, byrow=T)
mat_b_t<-t(mat_b)
prod<-mat_b_t%*%mat_b
prod


# 5) a)
# Create the following matrix
# 1 4 7 10 13
# 2 5 8 11 14
# 3 6 9 12 15
# Change the column names to "p1", "p2", "p3", "p4" and "p5" and the row names
# to "Alice", "Bill" and "Sara"
# Calculate the mean for all columns
m1<-matrix(1:15, ncol=5, nrow=3, byrow=F)
colnames(m1)<-c('p1', 'p2', 'p3', 'p4', 'p5')
rownames(m1)<-c('Alice', 'Bill', 'Sara')
colMeans(m1)

# Prepare a factor variable named category, which stores the products categories
category<-factor(c('home', 'office', 'home', 'school', 'office', 'home'))
levels(category)
summary(category)
