setwd("/home/sadi/MY_data/Data science project/Code")
library(ggplot2)
library(gridExtra)

myBoxPlot <- function(){
  
  myData  <- read.csv(file = "/home/sadi/MY_data/Data science project/Code/Dataset_2.csv", header = TRUE) 
  print(myData)
  
  myPlot  <- ggplot(myData, aes(y=atm_name, x =total_amount_withdrawn, color = weekday)) +labs(x="Total Amount Of Withdrawals",y="ATM Name")+ ggtitle("         Total Amount Withdrawn in Working days")+
    geom_boxplot()
  
  
  print(myPlot)
  
}

main <- function(){
  myBoxPlot()
  print("Done")
  
}

main()