#import library
library(ggplot2)

#reading data
df <- read.csv(file.choose())

#head and class
head(df)
tail(df)
class(df)
str(df)
#----------------------------------------------------------------------------------

#column names
colnames(df)<-c('date', 'temp_max', 'temp_min', 'temp_avg', 'prec', 'snow_fall', 'snow_depth')
head(df)

#temp difference in day
df$temp_diff<- df$temp_max-df$temp_min
head(df)

df$date<-as.Date(df$date, "%d-%m-%Y")
head(df,15)

#------------------------------------------------------------------------------------

ggplot(df, aes(date, temp_diff, group=1))+
  geom_line(aes(colour='red'))+
  geom_smooth()

hist(df$temp_diff)
dev.off()

#-----------------------------------------------------------------------------------

#scatter plot temperature difference

ggplot(df, aes(date, temp_avg, group=1))+
  geom_line(aes(colour='red'))+
  geom_smooth()

plot.ts(df$date, df$temp_avg)

#-----------------------------------------------------------------------

# hottest and coldest days
coldest_day <- as.character(df$date[which.min(df$temp_min)])
hottest_day <- as.character(df$date[which.max(df$temp_max)])
print(coldest_day)
print(hottest_day)

#----------------------------
