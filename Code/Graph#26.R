setwd("/home/sadi/MY_data/Data science project/Code")
library(ggplot2)
library(gridExtra)

myBoxPlot <- function(){
  
  myData  <- read.csv(file = "/home/sadi/MY_data/Data science project/Code/Dataset_2.csv", header = TRUE) 
  print(myData)
  
  myPlot  <- ggplot(myData, aes(x=working_day, y =amount_withdrawn_cub_card, color = atm_name)) +labs(x="Working Days",y="Total Amount Of Withdrawals by XYZ card")+ ggtitle("Total Amount Withdrawn by XYZ card in Working days")+
    geom_boxplot()
  
  
  print(myPlot)
  
}

main <- function(){
  myBoxPlot()
  print("Done")
  
}

main()