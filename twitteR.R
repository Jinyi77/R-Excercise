library(ROAuth)
library(plyr)
library(stringr)
library(ggplot2)
library(twitteR)
library(RJSONIO)

################################################################################
setwd('C:/Users/Jinyi/Dropbox/Jinyi/Github/R-Excercise')
download.file(url='http://curl.haxx.se/ca/cacert.pem',destfile='cacert.pem')

requestURL <- 'https://api.twitter.com/oauth/request_token'
accessURL <- 'https://api.twitter.com/oauth/access_token'
authURL <- 'https://api.twitter.com/oauth/authorize'

consumerKey <- 'bHBkjtbHg0CFhLVVQHtAPBJqL'
consumerSecret <- 'ISBt4WsdKMb5RgBeyYDw2IYp4rqv7a2EWVdOXduQKLpYiL3csW'

twitCred <- OAuthFactory$new(consumerKey=consumerKey,
                             consumerSecret=consumerSecret,
                             requestURL=requestURL,
                             accessURL=accessURL,
                             authURL=authURL)

twitCred$handshake(cainfo="cacert.pem")
save(twitCred, file = "twitter_auth.Rdata")

################################################################################
setwd('C:/Users/Jinyi/Dropbox/Jinyi/Github/R-Excercise')
load("twitter_auth.Rdata")
registerTwitterOAuth(twitCred)

searchTwitter('best', 
              geocode='44.6478,-63.5714,10000mi', 
              since='2000-03-01', 
              n=5000, 
              cainfo="cacert.pem")













