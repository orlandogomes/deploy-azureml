#Deploy de Modelos no Azure ML - Eexecute R Sript

#R Script Azure ML I
#Input Data
dataset <- maml.mapInputPort(1)
#Check
str(dataset)
#Output Data
maml.mapOutputPort("dataset");


#R Script Azure ML II
#Input Data
dataset <- maml.mapInputPort(1)
#Format - Decimal Houses
dataset$scored_label <- as.numeric(dataset$scored_label)
dataset$scored_label <- round(dataset$scored_label, 0)
dataset$mpg <- round(dataset$mpg, 0)
#Output Data
maml.mapOutputPort("dataset");

#Calculate Error
#library(dplyr)
#dataset <- dataset %>% mutate(error = mpg - scored_label)