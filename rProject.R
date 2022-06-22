library(SocialMediaLab)
library(syuzhet)
KeyYoutube <- "AIzaSyAEBwOoF3OrCsemZqlAsTDwNMX8wGfSDs0"
Key<- AuthenticateWithYoutubeAPI(KeyYoutube)
videoid1<-"OExRBGfhLKc" #Aug 2020 Pm of India
videoid2<-"fu_LMqc__Sk" #Jan 2022 Pm of India
ytdata1<-CollectDataYoutube(videoid1,Key,writeToFile = F)
comments1<-iconv(ytdata1$Comment,to ='utf-8-mac')
ytdata2<-CollectDataYoutube(videoid2,Key,writeToFile = F)
comments2<-iconv(ytdata2$Comment,to ='utf-8-mac')
scorces1<-get_nrc_sentiment(comments1)
scorces2<-get_nrc_sentiment(comments2)
newScorce<-rbind(scorces1,scorces2)

# barplot(100*colSums(newScorce)/sum(newScorce),
#         las=2,
#         col=rainbow(10),
#         ylab='%',
#         main='Sentiment Scores between August 2020 and January 2022 ')


# 
# barplot(100*colSums(scorces1)/sum(scorces1),
#         las=2,
#         col=rainbow(10),
#         ylab='%',
#         main='Sentiment Scores at August 2020 for Pm of India')



barplot(100*colSums(scorces2)/sum(scorces2),
        las=2,
        col=rainbow(10),
        ylab='%',
        main='Sentiment Scores at January 2022 for Pm of India')

