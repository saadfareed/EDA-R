setwd("/home/sadi/MY_data/Data science project/Code")
library(ggplot2)
library(gridExtra)
polyPlot <- function(){
  myData  <- read.csv(file = "/home/sadi/MY_data/Data science project/Code/Dataset_2.csv") 
  myPlot <- ggplot(myData, aes(no_of_cub_card_withdrawals,amount_withdrawn_cub_card)) +
    geom_point() +labs(x="Number of Withdrawals by XYZ card",y="Amount Withdrawn from XYZ card",color="#143D59")+ggtitle("                  Amount over Number of withrawals done from XYZ card")
  myF    <- y ~ poly(x, 2, raw = TRUE)
  myPlot1 <- myPlot + geom_smooth(method = 'lm', se = TRUE, level = 0.9, formula =  myF, color="#F4B41A") +
    stat_poly_eq(formula = myF, 
                 aes(label = paste(..eq.label.., ..rr.label.., sep = "~~~")), 
                 parse = TRUE, color='#143D59')
  
  myPlot2 <- ggplot(myData, aes(no_of_other_card_withdrawals,amount_withdrawn_other_card)) +
    geom_point() +labs(x="Number of Withdrawals by Other card",y="Amount Withdrawn from other card",color="#143D59")+ggtitle("                  Amount over Number of withrawals done from other card")
  myF    <- y ~ poly(x, 2, raw = TRUE)
  myPlot2 <- myPlot2 + geom_smooth(method = 'lm', se = TRUE, level = 0.9, formula =  myF, color="#3BEE0E") +
    stat_poly_eq(formula = myF, 
                 aes(label = paste(..eq.label.., ..rr.label.., sep = "~~~")), 
                 parse = TRUE, color='#000000')
  grid.arrange(myPlot1,myPlot2)
   #dev.off()
  
  
}

  
  main <- function(){
    #freqDist()
    polyPlot()
    #createPlots()
    print("Done")
    
  }
  
  main()