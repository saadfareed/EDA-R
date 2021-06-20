setwd("/home/sadi/MY_data/Data science project/Code")
library(ggplot2)
library(gridExtra)
freqDist2 <- function(){
  
  myData  <- read.csv(file = "/home/sadi/MY_data/Data science project/Code/Dataset_2.csv", header = TRUE ) 
  
  myPlot  <- ggplot(myData, aes(x = atm_name, color = weekday)) +
    geom_histogram(fill="white", alpha=0.05, position = "dodge",stat ="count")+labs(x="ATM NAME",y="Number of Times Used")+ggtitle("                             ATM USED IN WEEKDAYS       ")
  
  print(myPlot)
  
}
main <- function(){
  freqDist2()
  print("Done")
  
}

main()