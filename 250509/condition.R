setwd("D:\\2025_KoSeoyeon\\250509")

job.type <- 'A'

if(job.type == 'B'){
  bonus <- 200
}else{
  bonus <- 100
}

print(bonus)

#-------------------------------------

bonus <- 100

if(job.type == 'A'){
  bonus <- 200
}

print(bonus)


#------------------------------------
# if-else 를 이용한 처리

a <- 10
b <- 20

if(a>b){
  c <- a
}else{
  c <- b
}

print(c)

#-------------------------------------
# ifelse를 이용한 처리

a <- 10
b <- 20

c <- ifelse(a>b, a, b)
print(c)


#-------------------------------------

score <- 85

if(score > 90){
  grade <- 'A'
}else if(score > 80){
  grade <- 'B'
}else if(score > 70){
  grade <- 'C'
}else if(score > 60){
  grade <- 'D'
}else{
  grade <- 'F'
}

print(grade)

#----------------------------------
# 회원 등급 분류하고 혜택 부여하기

library(svDialogs)
putchase <- dlgInput('Enter thr putchase amount')$res
putchase <- as.numeric(putchase)

type <- NULL
ratio <- NULL

if(putchase >= 300000){
  type <- '플래티넘'
  ratio <- 0.07
}else if(putchase >= 200000){
  type <- '골드'
  ratio <- 0.05
}else if(putchase >= 100000){
  type <- '실버'
  ratio <- 0.03
}else{
  type <- '프랜즈'
  ratio <- 0.01
}

cat('고객님은 ',type,'회원으로 구매액의 ', ratio*100,'%가 적립됩니다!')



#----------------------------------------
# 반복문

for(i in 1:5){
  print('*')
}

for(i in 6:10){
  print(i)
}

# 머신러닝에서 학습 횟수를 조절할 때 i, j, k 등을 사용하여 로그찍음

for(i in 1:9){
  cat('2 *', i, '=' , 2*i, '\n')
}

for(i in 1:20){
  if(i%%2 == 0){ # i를 2로 나눴을때 나머지가 0이면 if문 블럭안으로 ㄱㄱ
    cat(i, ' ')
  }
}

#-------------------------------------------

sum <- 0
for(i in 1:100){
  sum <- sum + i
  print(sum)
}

print(sum)

#------------------------------------------

norow <- nrow(iris)
mylabel <- c()

for(i in 1:norow){
  
  if(iris$Petal.Length[i] <= 1.6){
    mylabel[i] <- 'L'
  }else if(iris$Petal.Length[i] >= 5.1){
    mylabel[i] <- 'H'
  }else{
    mylabel[i] <- 'M'
  }
  
}

print(mylabel)
newds <- data.frame(iris$Petal.Length, mylabel, iris$Species)
head(newds)


#----------------------------------

sum <- 0
i <- 1

while(i<= 100){
  sum <- sum+i
  i <- i+i
}

print(sum)


#----------------------------------

apply(iris[, 1:4], 1, mean)
apply(iris[, 1:4], 2, mean)


#----------------------------------
# 자격증 합격 여부 판단하기

sub1 <- c(14, 16, 12,20,8,6,12,18,16,10)
sub2 <- c(18,14,14,16,10,12,10,20,14,14)
sub3 <- c(44,38,30,48,42,50,36,52,54,32)

score <- data.frame(sub1, sub2, sub3)

total <- apply(score, 1, sum)
scoreset <- cbind(score, total)

result <- c()

for(i in 1:nrow(scoreset)){
  
  if(scoreset[i,1] < 20*0.4 |
     scoreset[i,2] < 20*0.4 |
     scoreset[i,3] < 60*0.4){
    
    result[i] <- '불합격'
  
  }else if(scoreset[i,4] >= 60){
    
    result[i] <- '합격'
        
  }else{
    
    result[i] <- '불합격'
    
  }
  
  cat(i, '번째 응시생은', result[i],'입니다.\n')
  
}

table(result)
