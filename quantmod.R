library(quantmod)
library(ggplot2)
setwd('C:/Users/Jinyi/Dropbox/Jinyi/Github/R-Excercise')
#http://www.quantmod.com/

getSymbols("VRSK",src="yahoo") 
getSymbols("RMS.PA",src="yahoo")
