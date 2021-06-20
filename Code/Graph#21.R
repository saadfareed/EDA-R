###################################
# Draw the basic scatter plot using ggplot2
###################################

setwd("/home/sadi/MY_data/Data science project/Code")
library(ggplot2)
library(ggpmisc)
library(scales)

############# Function to Read Data Frame #################
readData <- function(){
  myD <- read.csv(file = "/home/sadi/MY_data/Data science project/Code/Dataset_2.csv", header = TRUE) 
  print(head(myD))
  return(myD)
}
createScatter2 <- function(myData){
  
  myPlot <- ggplot(myData, aes(x = total_amount_withdrawn, y = no_of_other_card_withdrawals,,color = working_day)) +
    geom_point() +
    geom_smooth(method = 'lm', se = TRUE, level = 0.7, 
                color = 'red', fill = 'blue')+labs(x="Total Amount Withdrawn",y="No Of Withdrawals by other card")+ ggtitle("    Amount of Money Withdrawls by Other card in Working Days  ")
  
  print(myPlot)
}


main <- function(){
  dat <- readData()
  createScatter2(myData = dat)
  #polyPlot()
  print("Done")
  
}

main()