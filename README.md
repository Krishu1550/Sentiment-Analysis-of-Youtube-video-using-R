library(BasketballAnalyzeR)
gameData<-PbPmanipulation(PbP.BDB)
str(gameData)
playerData<-subset(gameData,player="Stephen Curry")
playerData$xx<-playerData$original_x/10
playerData$yy<-playerData$original_y/10-41.75
shotchart(data = playerData,x="xx",y="yy",scatter=F,
          num.sect = 6,
          type = 'sectors',
          z='playlength',
          result = 'result')
