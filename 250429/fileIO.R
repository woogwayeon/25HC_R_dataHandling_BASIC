setwd("D:\\2025_KoSeoyeon\\250429")

air <- read.csv('D:\\2025_KoSeoyeon\\250422\\airquality.csv', header=T)
head(air)

# 품종 데이터만 추출
my.iris <- subset(iris, Species=='virginica')

# csv파일로 저장하기
write.csv(my.iris, 'my_iris.csv', row.names=F)

# 엑셀 파일 읽기와 쓰기
install.packages('xlsx')
library(xlsx)
air <- read.xlsx('.\\..\\250422\\airquality.xlsx', 
                 header=T, sheetIndex=1, encoding = 'UTF-8')
head(air)

my.iris2 <- subset(iris, Species=='virginica')
write.xlsx(my.iris2, 'my_iris.xlsx', row.names = T )
head(my.iris)

# 다이아몬드 정보 쓰고 읽기
library(ggplot2)
str(diamonds)
diamonds.new <- subset(diamonds, cut=='Premium' & carat >=2 )
write.csv(diamonds.new, 'shiny_diamonds.csv', row.names = F)
#  diamonds.load <- read.csv('shiny_diamonds.csv', header=T)
rm(diamonds.new) # remove
str(diamonds.new)
diamonds.load <- read.csv('shiny_diamonds.csv', header=T)
diamonds.new <- subset(diamonds.load, color!='D')
write.xlsx(diamonds.new, 'shiny_diamonds.xlsx', row.names = F)

print('Begin work')
a <- 20
b <- 30

sink('result.txt', append=T)
cat('a+b=',a+b,'\n')
sink()

cat('Hello world \n')

sink('result.txt', append=F)
cat('a*b=',a*b,'\n')
sink()

print('end work')


air <- read.table('.\\..\\250422\\airquality.txt', header=T, sep=' ')
head(air)

library(svDialogs)
height <- dlgInput("키를 입력하세요")$res
weight <- dlgInput("몸무게를 입력하세요")$res
height <- as.numeric(height)
weight <- as.numeric(weight)
height <- height/100
bmi <- weight/(height*height)

sink('bmi.txt', append=T)
cat(height*100, weight, bmi)
cat('\n')
sink()

# 위에 이름붙이기..ㅎㅎ
result <- read.table('bmi.txt', sep=" ")
names(result) <- c('height', 'weight', 'bmi')
write.table(result, 'bmi_new.txt', row.names=F)
head(result)


# 자동타의 타입, 시내 주행 평균연비를 검색해서 파일로 출력
library(xlsx)
carprice.new <- read.csv('.\\..\\250422\\carprice.csv', header=T)
str(carprice.new)

library(svDialogs)
input.type <- dlgInput('input type')$res
input.city <- dlgInput('input MPG.city')$res
input.city <- as.numeric(input.city)

# subset 함수로 입력받은 조건 추출해서 파일에 출력
car.result <- subset(carprice.new, Type==input.type & MPG.city >= input.city)
print(car.result)
sink('search.txt', append=T)
print(car.result)
sink()

nrow(car.result) # nrow로 추출한 데이터 인스턴스가 몇갠지 알수이씀

write.xlsx(car.result,'search.xlsx', row.names = T)

input.type <- 'Small'
input.city <- 20
car.result <- subset(carprice.new, Type==input.type & MPG.city >= input.city)
sink('search.txt', append=T)
print(car.result)
sink()

nrow(car.result) 
write.xlsx(car.result,'search.xlsx', row.names = T)
