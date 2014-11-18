library("gdata")

setwd("C:/Users/Jinyi/Dropbox/Jinyi/data_source/r_excercise")
options(digits = 3)

ll()
a = c(1:10)
b = a^2
plot(a, b)
save.image("plot")
rm(a, b)

help("lm")
?lm

example("lm")
apropos("lm", mode="function")
