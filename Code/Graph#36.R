setwd("/home/sadi/MY_data/Data science project/Code")
library(ggplot2)
library(gridExtra)

createPlots <- function(){
  
  myData  <- read.csv(file = "/home/sadi/MY_data/Data science project/Code/Dataset_2.csv", header = TRUE )
  myPlot1 <- ggplot(myData,aes(x =atm_name,color =working_day)) +
    geom_histogram(fill="white", alpha=0.05, position = "dodge",stat ="count")+labs(x="ATM NAME",y="Number of Times Used")+ggtitle("                              ATM USED IN WORKING DAYS")
  
  
  myPlot2 <- ggplot(myData,aes(x =atm_name,color =weekday)) +
    geom_histogram(fill="white", alpha=0.05, position = "dodge",stat ="count")+labs(x="ATM NAME",y="Number of Times Used")+ggtitle("                                 ATM USED IN WEEKDAYS")
  
  
  grid.arrange(myPlot1, myPlot2)
  # dev.off()
  
  
}

main <- function(){
  createPlots()
  #freqDist()
  print("Done")
  
}

main()