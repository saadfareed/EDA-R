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

  myPlot <- ggplot(myData, aes(y=atm_name,x=amount_withdrawn_other_card,fill=weekday ))+geom_bar(position = "dodge" , stat='identity')
  
  
  
  #myPlot <- myPlot + geom_bar(stat = "Count")
  myPlot <- myPlot+labs(x="Amount Withdrawn from others card",y="ATM Name",color="Working Days")+ggtitle("                          Analysis the Atm Dataset   ")
  
  print(myPlot)
  
}
main <- function(){
  dat <- readData()
  createHistogram(myData<-dat)
  #polyPlot()
  print("Done")
  
}

main()