setwd('D:\\2025_KoSeoyeon\\250527')

idx <- which(iris$Petal.Length>5.0)

iris.big <- iris[idx,]

score <- c(60,40,95,80)
names(score) <- c('John','Jane','Tom','David')
idx <- which.min(score)
names(score)[2]



# 언어발달 상황 진단 프로그램 작성(Stat2Data 패키지 > ChildSpeaks 데이터셋)
library(Stat2Data)
data(ChildSpeaks)
str(ChildSpeaks)

# 말문이 트인 시기
idx <- which(ChildSpeaks$Age <9)
ChildSpeaks[idx, 'm1'] <- 5
idx <- which(ChildSpeaks$Age >=9 & ChildSpeaks$Age < 15)
ChildSpeaks[idx, 'm1'] <- 4
idx <- which(ChildSpeaks$Age >=15 & ChildSpeaks$Age < 21)
ChildSpeaks[idx, 'm1'] <- 3
idx <- which(ChildSpeaks$Age >=21 & ChildSpeaks$Age < 27)
ChildSpeaks[idx, 'm1'] <- 2
idx <- which(ChildSpeaks$Age >=27)
ChildSpeaks[idx, 'm1'] <- 1

# 언어이해력 점수 등급 환산
ChildSpeaks[5,'m2'] <- NA
idx <- which(ChildSpeaks$Gesell <70)
ChildSpeaks$m2[idx] <- 1
idx <- which(ChildSpeaks$Gesell>=70&ChildSpeaks$Gesell<90)
ChildSpeaks$m2[idx] <- 2
idx <- which(ChildSpeaks$Gesell>=90&ChildSpeaks$Gesell<110)
ChildSpeaks$m2[idx] <- 3
idx <- which(ChildSpeaks$Gesell>=110&ChildSpeaks$Gesell<130)
ChildSpeaks$m2[idx] <- 4
idx <- which(ChildSpeaks$Gesell>=130)
ChildSpeaks$m2[idx] <- 5

table(ChildSpeaks$m2)

# 언어발달 상황 진단결과
ChildSpeaks$total <- ChildSpeaks$m1 + ChildSpeaks$m2

ChildSpeaks$result <- NA
idx <- which(ChildSpeaks$total<3)
ChildSpeaks$result[idx] <- '매우느림'
idx <- which(ChildSpeaks$total>=3&ChildSpeaks$total<5)
ChildSpeaks$result[idx] <- '느림'
idx <- which(ChildSpeaks$total>=5&ChildSpeaks$total<7)
ChildSpeaks$result[idx] <- '보통'
idx <- which(ChildSpeaks$total>=7&ChildSpeaks$total<9)
ChildSpeaks$result[idx] <- '빠름'
idx <- which(ChildSpeaks$total>=9)
ChildSpeaks$result[idx] <- '매우빠름'

table(ChildSpeaks$result)

# 제일 느린 친구
ChildSpeaks[which.min(ChildSpeaks$total),]



# tips 데이터
library('reshape2')
str(tips)

unique(tips$smoker)
idx <- which(tips[, 'smoker']=='Yes')
avg.female <- mean(tips[idx, 'tip'])
idx <- which(tips[, 'smoker']=='No')
avg.male <- mean(tips[idx, 'tip'])

meanbycol.tip <- function(colname){
  
  value <- unique(tips[, colname])
  result <- list()
  
  for(i in 1:length(value)){
    idx <- which(tips[, colname] == value[i])
    result[i] <- mean(tips[idx, 'tip'])
  }
  
  names(result) <- value
  
  return(result)
      
}

meanbycol.tip('day')


categorize.tip <- function(tips){
  
  tip_ratio <- tips$tip/tips$total_bill *100
  
  class <- c()
  
  for(i in 1:nrow(tips)){
    
    if(tip_ratio[i]<10){
      
      class[i] <- 1
      
    }else if(tip_ratio[i]<15){
      
      class[i] <- 2
      
    }else if(tip_ratio[i]<20){
      
      class[i] <- 3
      
    }else{
      
      class[i] <- 4
      
    }
    
  }
  
  tips.new <- cbind(tips, type=class, ratio = tip_ratio)
  
  res <- c()
  
  for(i in 1:4){
    
    idx <- which(tips.new[, 'type']==i)
    tips.tmp <- tips.new[idx, ]
    res.tmp <- apply(tips.tmp[c('type','total_bill','tip','ratio')], 2, mean)
    res <- rbind(res, res.tmp)
    
  }
  rownames(res) <- 1:4
  # 1번 타입일때 7정도 비율, 4타입(팁 젤높으면 24정도?)
  
  return(tips.new)
  
}
categorize.tip(tips)
