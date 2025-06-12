# 데이터셋의 기본 정보 알아보기(feat. iris dataset)

dim(iris)          # 행과 열의 갯수
dim(iris)[1]       # vector로서 행에 접근
dim(iris)[2]       # vector로서 열에 접근

nrow(iris)         # 행의 갯수
ncol(iris)         # 열의 갯수

colnames(iris)     # 피쳐명(필드명) 

head(iris)         # 데이터셋의 앞부분 일부확인
head(iris, 3)      # 인자로 숫자를 넣어주면 보고싶은 만큼만 볼 수 있따

tail(iris)         # 데이터셋의 뒷부분 일부 확인 
tail(iris, 9)      # 인자로 숫자를 넣어주면 보고싶은 만큼만 볼 수 있따

data(iris)         # 데이터셋 확인하기

# 데이터셋의 기본 정보 알아보기
str(iris)
class(iris[,5])
class(iris[,4])
levels(iris[, 5])
table(iris[, "Species"])
sum(table(iris[, "Species"]))

# 행별로 합계와 평균 계산하기
colSums(iris[, -5])
colMeans(iris[, -5])

# 열별로 합계와 평균 계산하기
rowSums(iris[, -5])
rowMeans(iris[, -5])


# 행과 열의 방향 변환하기
z <- matrix(1:20, nrow=4, ncol=5)
t(z)  # transport


# subset() : 조건에 맞는 행과 열의 값 추출!
IR.1 <- subset(iris, Species == 'setosa')
IR.2 <- subset(iris, Sepal.Length > 5.0 & Sepal.Width > 4.0)
IR.2[, c(2, 4)]

spe <- iris[,5][3]
IR.3 <- subset(iris, Species == spe)




