setwd("/home/sadi/MY_data/Data science project")
library(ggplot2)
library(ggpmisc)

############# Function to Read Data Frame #################
readData <- function(){
  myD <- read.csv(file = "/home/sadi/MY_data/Data science project/Dataset_2.csv") 
  print(head(myD))
  return(myD)
}
createHistogram <- function(myData){
  
  myPlot <- ggplot(myData, aes(x=total_amount_withdrawn,y=weekday,color = atm_name))+theme(axis.text.x=element_blank(),axis.ticks.x=element_blank())+geom_bar(stat='identity')
  
  
  #myPlot <- myPlot + geom_bar(stat = "Count")
  myPlot <- myPlot + geom_bar(stat='identity')+labs(x="total_amount_withdrawn",y="weekday")+ggtitle("                          Analysis the Atm Dataset   ")
  
  print(myPlot)
  
}
main <- function(){
  dat <- readData()
  createHistogram(myData<-dat)
  #polyPlot()
  print("Done")
  
}

main()