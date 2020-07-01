#1) Obtain the result of
#a. 3 X 4
#b. (8/2)−(3 X 4)
#c. 8/(2−3) X 4
#Use the short cut Control + Enter to execute the program
3*4
(8/2)-(3*4)
8/(2-3)*4

#2) Create the number sequence:
#(a) 1, 2, 3, . . . , 19, 20
#(b) 20, 19, . . . , 2, 1
seq(1, 20)
seq(20, 1)

#3) Use the function paste to create the 
#following character vectors of length 30.
#"label 1", "label 2", ....., "label 30"
paste('label ', 1:30)

#4) Store the string 
#“The quick brown fox jumps over the lazy dog” into a variable.   
#a) In the string, replace the word “brown” with “red” 
#b) Use substr() function to pick the word “fox” from the string
fox_var = 'The quick brown fox jumps over the lazy dog'
sub('brown', 'red', fox_var)
substr(fox_var, start=17, stop=19)

#5)Write the expression to compute the perimeter of a rectangle. 
#Given b and h.
b<-3
h<-6
2*(b+h)

#6)Create following sequences with rep. 
#Get help on the rep(), by typing  ?rep.
#(4, 6, 3, 4, 6, 3, . . . , 4, 6, 3) 
#where there are 10 occurrences of 4.
rep(c(4,6,3), 10)
