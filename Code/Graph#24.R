setwd("/home/sadi/MY_data/Data science project/Code")
library(ggplot2)
library(gridExtra)

myBoxPlot <- function(){
  
  myData  <- read.csv(file = "/home/sadi/MY_data/Data science project/Code/Dataset_2.csv", header = TRUE) 
  print(myData)
  
  myPlot  <- ggplot(myData, aes(x=working_day, y =no_of_cub_card_withdrawals , color = atm_name)) +labs(x="Working day",y="No Of Withdrawals by XYZ card")+ ggtitle("  Number of Withdrawals from XYZ card in Working days")+
    geom_boxplot()
  
  print(myPlot)
  
}

main <- function(){
  myBoxPlot()
  print("Done")
  
}

main()