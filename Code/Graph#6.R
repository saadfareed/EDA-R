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
  
  myPlot <- ggplot(myData, aes(y=atm_name,x=total_amount_withdrawn,color = working_day))+geom_bar(stat='identity')
  
  
  #myPlot <- myPlot + geom_bar(stat = "Count")
  myPlot <- myPlot+labs(x="TOTAL Amount Withdrawn",y="ATM NAME")+ggtitle("        Amount Withdrawn in WORKING DAYS   ")
  
  print(myPlot)
  
}
main <- function(){
  dat <- readData()
  createHistogram(myData<-dat)
  #polyPlot()
  print("Done")
  
}

main()