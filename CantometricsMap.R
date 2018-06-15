#The following code was used to create Fig. 1 (world Cantometric map) in:
#Savage, P. E. (2018). Alan Lomax’s Cantometrics Project: A comprehensive review. Music & Science.


#The following packages must be installed/loaded
library(maps)

#set working drive
setwd("/Users/pesavage/Documents/Research/Papers/Unpublished/Savage (2018) Music and Science Cantometrics review paper")

#import data
canto148<-read.csv("Cantometrics148Cultures.csv",header=TRUE,row.names=1)
canto.x<-canto148$Lon
canto.y<-canto148$Lat 

#map coloring by region
map("world", fill=TRUE, col="white", bg="lightblue", ylim=c(-60, 90), mar=c(0,0,0,0)) 
points(canto.x,canto.y, bg=c(rep("purple",3),rep("gold",3),rep("darkred",34),rep("blue",35),rep("black",3),rep("darkorange",12),rep("deepskyblue",10),rep("forestgreen",27),rep("mediumorchid1",5),rep("firebrick1",9),rep("palegreen",6)), pch=21) 

#add legend
legend(-51,-20, c("1)African Gatherer","2)Proto-Melanesia","3)Siberia","4)Circum-Pacific","5)Nuclear America","6)Tropical Gardener","7)Malayo-Polynesia","8)Central Asia","9)Old High Culture","10)Western Europe"),pch=21, pt.bg=c('darkmagenta', 'hotpink',"firebrick1","darkred","darkorange","blue","deepskyblue","gold","forestgreen","palegreen"), bty='n', cex=.7)
legend(37,-20, c("6)Tropical Gardener","7)Malayo-Polynesia","8)Central Asia","9)Old High Culture","10)Western Europe"),pch=21, pt.bg=c("blue","deepskyblue","gold","forestgreen","palegreen"), bty='n', cex=.7)
legend(110,-50, "Isolate",pch=21, pt.bg="black", bty='n', cex=.7)

