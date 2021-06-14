setwd("/home/sadi/MY_data/Data science project")
library(ggplot2)
library(ggpmisc)
############# Function to Read Data Frame #################
readData <- function(){
  myD <- read.csv(file = "/home/sadi/MY_data/Data science project/Dataset_2.csv",stringsAsFactors=FALSE) 
  print(head(myD))
  return(myD)
}

createHistogram <- function(myData){
  myData$transaction_date <- as.Date(myData$transaction_date, format = "%d/%m/%Y")
  myPlot <- ggplot(myData,aes(x=transaction_date,y=no_of_other_card_withdrawals,fill=atm_name))+ scale_x_date(date_labels="%d-%b-%y",date_breaks = "1 year")+geom_bar(stat='identity')
  
  
  #myPlot <- myPlot + geom_bar(stat = "Count")
  myPlot <- myPlot+labs(x="Transaction_date(YEAR)",y="Total Amount Withdrawn From Others Cart")+ggtitle("           Amount Withdrawn per Year From Others card       ")
  
  print(myPlot)
  
}
main <- function(){
  dat <- readData()
  createHistogram(myData<-dat)
  #polyPlot()
  print("Done")
  
}

main()