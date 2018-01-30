#Set your working directory accordingly or directly give path of the file to be read

getwd()

setwd("~/Desktop/GIT/abhi-jha/Pick-Movies")

#Read data from a file
data<-read.table(file = "movies.txt",header = FALSE,col.names = c("a","b"),sep = "\t",stringsAsFactors = FALSE)

#Find the audience
audience<-data[data$b == "Avataar",1]

#Find the movies corresonding to each audience
movies<-data[data$a %in% audience,2]

#Filter out the unique movies
unique(movies[movies != "Avataar"])

