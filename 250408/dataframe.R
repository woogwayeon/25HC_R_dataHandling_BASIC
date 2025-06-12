# 데이터프레임이 뭘까? > 즉 짬뽕이다!
# 매트릭스와 마찬가지로 2차원 형태의 데이터를 저장하고 분석하는데 사용되는 구조!

city <- c('seoul', 'tokyo', 'washingion') # 문자로 이루어진 벡터 만들기 
rank <- c(1, 3, 2)                        
city.info <- data.frame(city, rank)       # 두개 벡터를 데이터프레임 함수에 넣음
city.info

population <- c(5000, 6000, 7000)
happy <- c("very happy", "so happy", "happy")

city.info <- data.frame(city.info, population)
city.info <- cbind(city.info, happy) 

city.info <- rbind(city.info, c('busan', 4, 2000, 'tettible'))
city.info

# iris 데이터셋
iris

iris[, c(1:2)]                        # 1~2열의 모든 데이터
iris[, c(1,3,5)]                      # 1, 3, 5 열의 데이터
iris[, c('Sepal.Length', 'Species')]  # 'Sepal.Length', 'Species' 의 데이터
iris[1:5,]                            # 1:5 행까지만 출력 
iris[1:5, c(1,3)]                     # 1:5 행까지만 출력하고  1, 3열 출력



# data frame으로 hamburger 해보기

hamburger <- matrix(c(514,533,566,917,853,888,11,13,10), nrow=3)

menu <- c('새우', '불고기', '치킨')
hamburger <- data.frame(hamburger, menu)

rownames(hamburger) <- c('M', 'L', 'B')
colnames(hamburger) <- c('kcal', 'na', 'fat', '메뉴명')

hamburger

hamburger['M', 'na']             # M사의 나트륨 함량 찾기
hamburger['M',]                  # M사의 모든 영양정보 추출 
hamburger[,'kcal']               # 모든 햄버거 가게의 칼로리 알아보기
hamburger[c('M','B'), '메뉴명']  # M사와 B사의 메뉴명!



# iris 데이터셋의 기본 정보 알아보기
data(iris)
dim(iris)                         # iris 데이터셋의 행과 열 개수
nrow(iris)
ncol(iris)
colnames(iris)
head(iris, 3)                        # 데이터셋의 앞부분만 일부 추출해서 엿보기(?)
tail(iris, 10)                        # 데이터셋의 앞부분만 일부 추출해서 엿보기(?)

str(iris)  # 데이터셋의 요약 정보 확인

v <- iris[,5]   # 품종 데이터 확인하기
v <- iris[,]   

levels(iris[,5])           # 품종의 종류 보기 (중복 제거)
table(iris[, "Species"])   # 품종의 종류별 행의 갯수 세어보기

# 행별, 열별로 합계와 평균 계산하기 (참고로 '-' 연산자는 제외하다! 의 의미)

colSums(iris[,-5])    # 각 열의 합     : 마지막은 문자열 팩터니까 제외함함
colMeans(iris[,-5])   # 각 열의 평균들

rowSums(iris[,-5])    # 각 행의 합
rowMeans(iris[,-5])   # 각 행의 평균들


# 매트릭스와 데이터프레임의 함수 적용 (transpose) 행열 바꿈꿈 -> t()

z <- matrix(1:20, nrow=4, ncol=5) 
z
t(z)  # 행과 열을 90도로 transpose! dtm - tdm (표 기억나니?) 바꾸듯..!

# 조건에 맞는 행과 열의 값 추출하기 subset() 
IR.1 <- subset(iris, Species == 'setosa')
IR.1
IR.1[1:5,]

IR.2 <- subset(iris, Sepal.Length > 5.0 & Sepal.Width > 4.0)
IR.2
IR.2[, c(2, 3)]




# 데이터프레임과 벡터 매트리스의 차이
m1 <- c(1, 2, 3, 4)
m2 <- c(5, 6, 7, 8)
m.test <- cbind(m1, m2)
m.data <- data.frame(m1, m2)

str(m.test)
class(m.test)

str(m.data)
class(m.data)
