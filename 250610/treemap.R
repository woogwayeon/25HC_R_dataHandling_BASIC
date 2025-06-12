setwd('D:\\2025_KoSeoyeon\\250610')

install.packages('treemap')
library(treemap)
data(GNI2014)
head(GNI2014)

treemap(
  GNI2014,
  index = c('continent', 'iso3'),
  vSize = 'population',
  vColor = 'GNI',
  type = 'value',
  bg.labels = 'yellow',
  title = 'world\'s GNI'
)

# 타일의 면적은 인구수와 비례, 색은 GNI 의미
# 소득이 높을수록 진한 초록색, 낮을수록 노란색에 가깝다
# 타일들은 굵은 테두리선에 의해 대륙으로 묶여있다!
