library(tidyverse)
library(Amelia)
wine <- readxl::read_excel("input/wine_data.xlsx")
dim(wine)
str(wine)
glimpse(wine)

#some variable names are in quotes ('Number of Ratings' and 'Average Rating')
wine <-rename(wine, 'no_of_ratings'= 'Number of Ratings')
wine<- rename(wine, 'avg_rating'='Average Rating')
glimpse(wine)

# check for missing values
na_plot <- missmap(wine,legend = T, col =c('yellow','black'), main = "Wine Data MissingNess Map")
save(na_plot, file = "output/Fig_1_plot.fig")

save(wine,file="input/wine.rda")
