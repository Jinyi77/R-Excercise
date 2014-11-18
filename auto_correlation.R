library("ggplot2")

setwd("C:/Users/Jinyi/Dropbox/Jinyi/Github/R-Excercise")

noise = runif(1000,-1,1)

acf(noise, lag.max = 1000)

conf.level <- 0.95
ciline <- qnorm((1 - conf.level)/2)/sqrt(length(noise)-1)

bacf <- acf(noise, plot = FALSE)
bacfdf <- with(bacf, data.frame(lag, acf))

q <- ggplot(data = bacfdf, mapping = aes(x = lag, y = acf)) +
     geom_hline(aes(yintercept = 0)) +
     geom_hline(aes(yintercept = ciline)) +
     geom_hline(aes(yintercept = -1* ciline))
    # +geom_bar(stat = "identity", position = "identity")
q
