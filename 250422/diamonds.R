# 다이아몬드 정보 제공하기
setwd("D:/2025_KoSeoyeon/250422")

install.packages('ggplot2')
library(ggplot2)
head(diamonds)
str(diamonds)

diamonds.new <- subset(diamonds, (cut=='Premium') & (carat>=2))
write.csv(diamonds.new, 'shiny_diamonds.csv', row.names = F)

diamonds.load <- read.csv('shiny_diamonds.csv', header=T)
diamonds.new <- subset(diamonds.load, color != 'D')

install.packages('xlsx')
library(xlsx)
write.xlsx(diamonds.new, 'shiny_diamonds.xlsx', row.names = F)
