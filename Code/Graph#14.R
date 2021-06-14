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
  
  myPlot <- ggplot(myData, aes(x = amount_withdrawn_other_card, y = amount_withdrawn_cub_card,,color = weekday)) +
    geom_point() +
    geom_smooth(method = 'lm', se = TRUE, level = 3, 
                color = 'red', fill = 'blue')+labs(x="Amount Withdrawn Other Card",y="Amount Withdrawn from XYZ card")+ ggtitle("Comparison B/T WA From XYZ card to Other Cart WA")
  
  print(myPlot)
}


main <- function(){
  dat <- readData()
  createScatter2(myData = dat)
  #polyPlot()
  print("Done")
  
}

main()