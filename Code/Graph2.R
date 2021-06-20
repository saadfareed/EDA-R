setwd("/home/sadi/MY_data/Data science project/Code")
library(ggplot2)
library(gridExtra)

############# Freq Dist #################
myBoxPlot <- function(){
  
  myData  <- read.csv(file = "/home/sadi/MY_data/Data science project/Code/Dataset_2.csv", 
                        col.names = c("atm_name", "transaction_date") ) 
  #print(myData)
  
  myPlot  <- ggplot(myData, aes(x = atm_name ,y = transaction_date ))+
    geom_boxplot()
  
  myPlot <-myPlot+ggtitle("ANALYSIS OF ATM MACHINES ")
  
  print(myPlot)
  
}

main <- function(){
  #freqDist()
  #freqDist2()
  myBoxPlot()
  print("Done")
  
}

main()
