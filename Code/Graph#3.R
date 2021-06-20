###################################
# Draw the basic scatter plot using ggplot2
###################################

setwd("/home/sadi/MY_data/Data science project")
library(ggplot2)
library(ggpmisc)
library(scales)

############# Function to Read Data Frame #################
readData <- function(){
  myD <- read.csv(file = "/home/sadi/MY_data/Data science project/Dataset_2.csv", header = TRUE) 
  print(head(myD))
  return(myD)
}
createScatter2 <- function(myData){
  
  myPlot <- ggplot(myData, aes(x = total_amount_withdrawn, y = No_Of_Withdrawals)) +
    geom_point() +
    geom_smooth(method = 'lm', se = TRUE, level = 0.7, 
                 color = 'red', fill = 'blue')+labs(x="Total Amount Withdrawn",y="No Of Withdrawals")+ ggtitle("               Analysis the Amount over Number of Withdrawns Graph ")
   
  print(myPlot)
}


main <- function(){
  dat <- readData()
  createScatter2(myData = dat)
  #polyPlot()
  print("Done")
  
}

main()