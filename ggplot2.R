library(ggplot2)
setwd("C:/Users/Jinyi/Dropbox/Jinyi/Github/R-Excercise")

################################################################################
#using "mtcars" data set
?mtcars
head(mtcars)

#factorize data by its categorical variables
mtcars$vs = factor(x = mtcars$vs, 
                   levels = c(0,1), 
                   labels = c("V Engine", "Straight Engine"))
mtcars$am = factor(x = mtcars$am, 
                   levels = c(0,1), 
                   labels = c("Automatic", "Manual"))
mtcars$gear = factor(x = mtcars$gear, 
                     levels = sort(unique(mtcars$gear)), 
                     labels = c("3gears", "4gears", "5gears"))
mtcars$cyl = factor(x = mtcars$cyl, 
                    levels = sort(unique(mtcars$cyl)), 
                    labels = c("4cyl", "6cyl", "8cyl"))
mtcars$carb = factor(x = mtcars$carb, 
                     levels = sort(unique(mtcars$carb)), 
                     labels = c("1carburetors", "2carburetors","3carburetors",
                                "4carburetors","6carburetors","8carburetors"))
################################################################################
#playing with qplot -->  http://ggplot2.org/book/qplot.pdf

#basic
qplot(x=mpg, y=hp, data = mtcars)

#set alpha to specify the transparency 
qplot(x=mpg, y=hp, data = mtcars, color = gear, shape = gear, alpha = I(0.7))

#Adding geometric object. 
#se = FALSE: turn off the confidence interval
#span = 1: specify the wiggliness of the regression line using local regression
qplot(x=mpg, y=hp, data = mtcars, color = gear, shape = gear, alpha = I(0.7),
      geom = c("point","smooth"), span = 1,se=FALSE)










