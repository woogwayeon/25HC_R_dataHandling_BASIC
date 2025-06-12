setwd('D:\\2025_KoSeoyeon\\250513')

# 사용자 정의 함수

mymax <- function(x,y){
  num.max <- x
  if(y>x){
    num.max <- y
  }
  return(num.max)
}

a <- mymax(10,20)
b <- mymax(20,10)
print(a+b)


# 함수를 별도의 파일로 분리해서 사용하기
source('yeonfunc.R')

mydiv(12)
mydiv(16, 2)
mydiv(x=10, y=3)

result <- myfunc(5, 8)
s <- result[[1]]
m <- result[[2]]
cat('5+8=',s,'\n')
cat('5*8=',m,'\n')

# 자격증 합격 여부 판단하기
sub1 <- c(14,16,12,20,8,6,12,18,16,10)
sub2 <- c(18,14,14,16,10,12,10,20,14,14)
sub3 <- c(44,38,30,48,42,50,36,52,54,32)
score <- data.frame(sub1, sub2, sub3)
result <- determine(head(score,3))


# which : 조건에 맞는 데이터의 위치 알아보기
score <- c(76,84,69,50,95,60,82,71,88,84)
which(score==69)
which(score>=85)
max(score)
which.max(score)
min(score)
which.min(score)


idx <- which(score<=60) # 성적이 60이하인 값들 인덱스로 저장
score[idx] <- 61 # 성적조정(?ㅋㅋ 이렇게 값 바꿀 수 있다)

idx <- which(score>=80) # 성적 80이상 인덱스 추출해서 저장
score.high <- score[idx] # 그 인덱스만 해서 변수에 저장함

# subset 함수로 똑같이 구현해보기
score.high <- subset(score, score>=80)


# 아이리스 데이터셋 + witch 써보기
idx <- which(iris$Petal.Length>5.0)
iris.big <- iris[idx,]

iris.big <- subset(iris, iris$Petal.Length>5.0)


score <- c(60,40,95,80)
names(score) <- c('john', 'jane', 'tom', 'david')

idx <- which.max(score)
names(score)[idx]

