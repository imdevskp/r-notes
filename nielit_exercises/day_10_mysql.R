#import libraries
install.packages('RMySQL')
library(RMySQL)
library(dbConnect)

# connect with database
mysqlconn<-dbConnect(MySQL(),
                     user='sw800',
                     password='nielit',
                     dbname='sw800',
                     host='localhost')

# list all the tables inside the database
dbListTables(mysqlconn)

# see the tables
result<-dbSendQuery(mysqlconn, "select * from ai17country1;")
class(result)
print(result)
# use fetch to see the table in r dataframe
data<-fetch(result)
class(data)
print(data)
dbClearResult(result)

# b) Insert data of a few countries including United Kingdom 
dbSendQuery(mysqlconn, "insert into ai17country1 values (5, 'France', 'Euro', 'French');")
result<-dbSendQuery(mysqlconn, "select * from ai17country1;")
data<-fetch(result)
print(data)
dbClearResult(result)

# c) Select the list of countries where the language used is English 
result<-dbSendQuery(mysqlconn, "select * from ai17country1 where language='English';")
data<-fetch(result)
print(data)
dbClearResult(result)

# d) Update the name of United Kingdom to U K. 
dbSendQuery(mysqlconn, "update ai17country1 set country_name='U.K.' where country_id=2;")
result<-dbSendQuery(mysqlconn, "select * from ai17country1;")
data<-fetch(result)
print(data)
dbClearResult(result)

# e) Try deleting one of the entries by providing country_id. 
dbSendQuery(mysqlconn, "delete from ai17country1 where country_id=5;")
result<-dbSendQuery(mysqlconn, "select * from ai17country1;")
data<-fetch(result)
print(data)
dbClearResult(result)

# f) Write a query to list the country names in the alphabetic order 
result<-dbSendQuery(mysqlconn, "select * from ai17country1 order by country_name;")
data<-fetch(result)
print(data)
dbClearResult(result)

# g) Write a query to group the countries based on their language and 
# get the count of countries speaking each language. 
result<-dbSendQuery(mysqlconn, "select language, count(*) from ai17country1 group by language;")
data<-fetch(result)
print(data)
dbClearResult(result)

#----------------------------------------------------------------------------------------------------

# 3) Write an R Program to insert the mtcars dataframe  to a table in mysql. 
# (hint: dbWriteTable(mysqlconnection, "ai1mtcars", mtcars )) 
dbWriteTable(mysqlconn, 'mtcars_ai17', mtcars)

# a) List the details of all Mercedes models
result<-dbSendQuery(mysqlconn, "select * from mtcars_ai17 where row_names like 'Merc %';")
data<-fetch(result)
print(data)
dbClearResult(result)

result<-dbSendQuery(mysqlconn, "select * from mtcars_ai17;;")
data<-fetch(result)
print(data)
dbClearResult(result)

# b) List all models having 8 cylinders
result<-dbSendQuery(mysqlconn, "select row_names, cyl from mtcars_ai17 where cyl=8;")
data<-fetch(result)
print(data)
dbClearResult(result)

# c) List all models having hp value greater than 100
result<-dbSendQuery(mysqlconn, "select row_names, hp from mtcars_ai17 where hp>100;")
data<-fetch(result)
print(data)
dbClearResult(result)

# d) Find out the count of vehicles having same number of cylinders.
result<-dbSendQuery(mysqlconn, "select cyl, count(*) as count_of_cyl from mtcars_ai17 group by cyl;")
data<-fetch(result)
print(data)
dbClearResult(result)

# e) Get the list of models disp value between 100 and 200
result<-dbSendQuery(mysqlconn, "select row_names, disp from mtcars_ai17 where disp between 100 and 200;")
data<-fetch(result)
print(data)
dbClearResult(result)

#--------------------------------------------------------------------------------------------------

# 4) Write a program to load a database table you have created to an R dataframe.

m<-dbReadTable(mysqlconn, 'mtcars')
print(class(m))
print(m)
