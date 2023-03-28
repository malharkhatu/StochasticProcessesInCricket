###Procedure:
#i)   Importing the data set
#ii)  Creating a column named Required Run Rate and adding it in the data 
#iii) Creating a column named Net Run Rate and adding it in the data  
#iv)  Creating a column named X(t) by subtracting NRR and RR and adding it in the data
#v)   Creating a column named T1 by dividing number of balls played with 300 
#v)   as ODI matches have 300 balls to obtain a continuous time series 
#v)   between 0 and 1 and adding it in the data
#vi)  Obtaining mean and variance for the normal distribution of X(t)
#vii) Calculating Normal Probabilities for X(t)>0
#viii) Exporting the file to excel for further plotting

install.packages("writexl")
library(writexl)

##IND vs SA
data=read.csv(file.choose(),header = T)
data$RR <- (229-data$Cumulated.runs)/(300-data$Balls)
data$NRR <- data$Cumulated.runs/data$Balls
data$Xt <- data$NRR - data$RR
data$T1 <- data$Balls/300
data$mean <- ((-0.06)*(1-data$T1))+ data$Xt
data$variance <- ((2.04^2))*(1-data$T1)
data$prob <- pnorm(0,mean = data$mean,sd = sqrt(data$variance),lower.tail = F)
write_xlsx(data, path = 'D://narsee//Course//sem 4//Projects//Model 2//Final Data//INDvsSA1.xlsx')

##IND vs NZ
data=read.csv(file.choose(),header = T)
data$RR <- (240-data$Cumulated.runs)/(300-data$Balls)
data$NRR <- data$Cumulated.runs/data$Balls
data$Xt <- data$NRR - data$RR
data$T1 <- data$Balls/300
data$mean <- ((-0.06)*(1-data$T1))+ data$Xt
data$variance <- ((2.04^2))*(1-data$T1)
data$prob <- pnorm(0,mean = data$mean,sd = sqrt(data$variance),lower.tail = F)
write_xlsx(data, path = 'D://narsee//Course//sem 4//Projects//Model 2//Final Data//INDvsNZ1.xlsx')


##IND vs SL
data=read.csv(file.choose(),header = T)
data$RR <- (265-data$Cumulated.runs)/(300-data$Balls)
data$NRR <- data$Cumulated.runs/data$Balls
data$Xt <- data$NRR - data$RR
data$T1 <- data$Balls/300
data$mean <- ((-0.06)*(1-data$T1))+ data$Xt
data$variance <- ((2.04^2))*(1-data$T1)
data$prob <- pnorm(0,mean = data$mean,sd = sqrt(data$variance),lower.tail = F)
write_xlsx(data, path = 'D://narsee//Course//sem 4//Projects//Model 2//Final Data//INDvsSL1.xlsx')


##IND vs BAN
data=read.csv(file.choose(),header = T)
data$RR <- (315-data$Cumulated.runs)/(300-data$Balls)
data$NRR <- data$Cumulated.runs/data$Balls
data$Xt <- data$NRR - data$RR
data$T1 <- data$Balls/300
data$mean <- ((-0.69)*(1-data$T1))+ data$Xt
data$variance <- ((1.61^2))*(1-data$T1)
data$prob <- pnorm(0,mean = data$mean,sd = sqrt(data$variance),lower.tail = F)
write_xlsx(data, path = 'D://narsee//Course//sem 4//Projects//Model 2//Final Data//INDvsBAN1.xlsx')


##IND vs ENG
data=read.csv(file.choose(),header = T)
data$RR <- (338-data$Cumulated.runs)/(300-data$Balls)
data$NRR <- data$Cumulated.runs/data$Balls
data$Xt <- data$NRR - data$RR
data$T1 <- data$Balls/300
data$mean <- ((-0.06)*(1-data$T1))+ data$Xt
data$variance <- ((2.04^2))*(1-data$T1)
data$prob <- pnorm(0,mean = data$mean,sd = sqrt(data$variance),lower.tail = F)
write_xlsx(data, path = 'D://narsee//Course//sem 4//Projects//Model 2//Final Data//INDvsENG1.xlsx')
