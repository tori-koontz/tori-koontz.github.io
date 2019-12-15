#R code to retrieve twitter data about Costa Rica that mention nature, and then analyze the sentiment of the data set.
#Code written by Tori Koontz 2019.

#install packages for twitter, census, data management, and mapping
install.packages(c("rtweet","tidytext","maps","RPostgres","igraph","tm", "ggplot2","RColorBrewer","rccmisc","ggraph","ggmap","geoparser","plotly","udpipe","SentimentAnalysis","plyr","wordcloud"))
install.packages(c("textdata"))

#initialize the libraries. this must be done each time you load the project
library(rtweet)
library(igraph)
library(tidytext)
library(tm)
library(plyr)
library(dplyr)
library(tidyr)
library(ggraph)
library(ggplot2)
library(RPostgres)
library(RColorBrewer)
library(DBI)
library(rccmisc)
library(ggmap)
library(geoparser)
library(textdata)
library(plotly)
library(udpipe)
library(wordcloud)
library(rccmisc)

#initialize twitter API
twitter_token <- create_token(
  app = "app name here",
  consumer_key = "consumer_key here",  		
  consumer_secret = "consumer_secret here",
  access_token = NULL,
  access_secret = NULL
)
  
#Search twitter to create data set
crnature <- search_tweets("costa and rica and (nature OR beach OR environment OR forest OR park)", n=15000, retryonratelimit=FALSE, include_rts=TRUE, token=twitter_token)

#unnest text column from crnature table
naturetoken <-
  unnest_tokens(crnature,word,text,token="words",format = c("text"),to_lower=TRUE, drop=TRUE,collapse=NULL)%>%
  anti_join(get_stopwords(),by = "word")

naturetoken %>%
  add_row()%>%
  count(word,sort = TRUE)

#view common words in a plot
naturetoken %>%
  count(word, sort = TRUE) %>%
  filter(n > 100) %>%
  mutate(word = reorder(word, n)) %>%
  ggplot(aes(word, n)) +
  geom_col() +
  xlab(NULL) +
  coord_flip()

#Analyze sentiment of tweets
afinn_sentiment <-get_sentiments(lexicon =c("afinn"))

crsentiment <- naturetoken %>%
  inner_join(afinn_sentiment, by ="word")

#plot sentiment

hist(crsentiment$value)

library(ggplot2)
crsentiment %>%
  count("word") %>%
  filter(n > 10) %>%
  mutate(word = reorder(word,n)) 
  ggplot(aes_(word, value))+
  geom_col() +
  xlab(NULL) +
  coord_flip()
  
#These next steps are more for understanding what I was trying to accomplish, as none of it works.
  
crsentiment$count = count("word") 

mutate(
  crsentiment,freq =
    count("word") %>%
      filter(n > 10) %>%
      mutate(word = reorder(word,n))
  )

plotSentiment(crsentiment, x = NULL, cumsum = FALSE, xlab = "word",
              ylab = "value")

#The output would hopefully be a graph which shows the most frequently-occuring words and their corresponding sentiment score.





con <- dbConnect(RPostgres::Postgres(), dbname='tori', host='artemis', user='tori', password='Tk003455?') 

#list the database tables
dbListTables(con) 

#create a simple table for uploading
crsentimentz <- select(crsentiment,c("user_id","status_id","word","value"),starts_with("user_id"))

#write data to the database
dbWriteTable(con,'crsentiment',crsentimentz, overwrite=TRUE)

#disconnect from the database
dbDisconnect(con)

