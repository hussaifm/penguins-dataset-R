library(tidyverse)
library(palmerpenguins)
head(penguins)
dim(penguins)
class(penguins)
?penguins


#Cleaning the data(removing the messing rows)
penguins1 <- complete.cases(penguins)
penguins1
penguins2 <- penguins[penguins1, ]
penguins2
#convert it to data frame
penguins2 <- as.data.frame(penguins2)
head(penguins2)
dim(penguins2)

#now we start random forest, the response variable is species
# activiate: library(randomForest)
library(randomForest)
table(penguins2$species)

MB <- randomForest(species ~ ., data = penguins2, importance = T)
print(MB)
MB1 > varImpPlot(MB, pch = 16, col = "red", n.var = 4, sort = T, 
                 main = "Importance of Variables for the penguins data")

#Classification tree
library(rpart)
library(rpart.plot)
classification <- rpart(species ~ ., data = penguins2)
rpart.plot(classification, digits = 3, type = 4, extra = 1, col = "red")
