setwd("/home/sadi/MY_data/Data science project/Code")
library(ggplot2)
library(ggpmisc)

############# Function to Read Data Frame #################
readData <- function(){
  myD <- read.csv(file = "/home/sadi/MY_data/Data science project/Code/Dataset_2.csv") 
  print(head(myD))
  return(myD)
}
createHistogram <- function(myData){
  
  myPlot <- ggplot(myData, aes(y=atm_name,x=amount_withdrawn_other_card,color = weekday))+geom_bar(stat='identity')
  
  #myPlot <- myPlot + geom_bar(stat = "Count")
  myPlot <- myPlot+labs(x="Total Amount withdrawn From other card",y="ATM NAME")+ggtitle("      Amount withdrawn by other card in Weekdays   ")
  
  print(myPlot)
  
}
main <- function(){
  dat <- readData()
  createHistogram(myData<-dat)
  #polyPlot()
  print("Done")
  
}

main()