setwd("/home/sadi/MY_data/Data science project/Code")
library(ggplot2)
library(gridExtra)

myBoxPlot <- function(){
  
  myData  <- read.csv(file = "/home/sadi/MY_data/Data science project/Code/Dataset_2.csv", header = TRUE) 
  print(myData)
  
  myPlot  <- ggplot(myData, aes(x=working_day, y =No_Of_Withdrawals , color = atm_name)) +labs(x="Working day",y="No Of Withdrawals")+ ggtitle("            Number of Withdrawals in weekdays")+
    geom_boxplot()
  
  
  print(myPlot)
  
}

main <- function(){
  myBoxPlot()
  print("Done")
  
}

main()