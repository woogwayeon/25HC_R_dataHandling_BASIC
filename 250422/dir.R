# 파일을 이용해 데이터를 읽고 쓰는 방법

# 작업폴더와 경로
getwd()

# 따옴표로 묶고 일반 슬래시 바꿔주면됨
setwd('D:\\2025_KoSeoyeon\\250422')         # 작업폴더 선택


# csv 파일 읽기
air <- read.csv('./airquality.csv', header=T) # csv파일 읽기
head(air)                                   # 앞부분 엿보기
class(air)                                  # 자료구조 확인


# csv 파일에 데이터 쓰기 (? 내보내기.. 느낌)

# 품종 데이터만 추출
my.iris <- subset(iris, Species=='setosa') 

# .csv 파일에 저장하기
write.csv(my.iris, 'my_iris.csv', row.names = F)
write.csv(my.iris, 'my_iris.csv', row.names = T)



# 엑셀 파일 읽기와 쓰기
install.packages('xlsx')
library(xlsx)

# 엑셀 파일에 읽기
air <- read.xlsx('./airquality.xlsx', header=T, sheetIndex=1, 
                 encoding='UTF-8')
head(air)

# 엑셀 파일에 쓰기
write.xlsx(my.iris, 'my_iris.xlsx', row.names=F)

# 오픈소스 프로그램이기때문에 읽을 때 
# 여러 패키지를 통해 읽을 수 있다 > 구글에 검색한다는 뜻


# 실행 결과를 파일로 출력하기
print('출력 시작')
a<-10; b<-20

# 파일로 출력 시작 (append=T면 뒤에 붙임)
sink('result.txt', append=T)  
cat('a + b = ', a+b, '\n')
# 파일로 출력 정지
sink()            

cat('hello world\n')

# 파일로 출력 시작 (append=F면 싹다지우고 새로 써짐)
sink('result.txt', append=F) 
cat('a * b = ', a*b,'\n')
# 파일로 출력 종료
sink()
print('출력 종료')

# txt 파일도 불러와보자!
air <- read.table('airquality.txt', header=T, sep=' ')
head(air)
str(air)
