## Top 5 State that has the highest racial hate crime

#Table 12 Data Cleaning
library(readxl)
setwd('/Users/jungsoolee/Documents/Project/Study of Karen')
tbl12 <-read_excel('./Data/Table 12/Table_12_Agency_Hate_Crime_Reporting_by_State_2018.xls')
colnames(tbl12)<-gsub('[[:space:]]','.',tbl12[2,])
tbl12<-tbl12[4:54,]

str(tbl12) #All Chr
tbl12<-transform(tbl12,Population.covered=as.numeric(Population.covered)
                 ,Total.number.of.incidents.reported=as.numeric(Total.number.of.incidents.reported))

tbl12$Crime.Rate.per.1.Million.Population<-tbl12$Total.number.of.incidents.reported*1000000/tbl12$Population.covered
tbl12<-tbl12[order(tbl12$Crime.Rate.per.1.Million.Population, decreasing=TRUE),]
tbl12[1:5,1]




