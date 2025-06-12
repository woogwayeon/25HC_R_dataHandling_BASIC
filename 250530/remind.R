setwd('D:\\2025_KoSeoyeon\\250530')

# 종업원의 팁 분석하기 !!1 완전 중요 !!

library(reshape2)
head(tips)

meanbycol.tip <- function(colname){
  
  value <- unique(tips[, colname])
  result <- list()
  
  for(i in 1:length(value)){
    
    # print(i)
    # print(value[i])
    idx <- which(tips[, colname] == value[i])
    result[i] <- mean(tips[idx, 'tip'])
    
  }  
  
  names(result) <- value
  return(result)
}

meanbycol.tip('day')


categorize.tip <- function(tips){
  
  tip.ratio <- tips$tip/tips$total_bill * 100
  
  class <- c()
  
  for(i in 1:nrow(tips)){
    if(tip.ratio[i]<10){
      class[i] <- 1
    }else if(tip.ratio[i]<15){
      class[i] <- 2
    }else if(tip.ratio[i]<20){
      class[i] <- 3
    }else{
      class[i] <- 4
    }
  }
  
  tips.new <- cbind(tips, type=class, ratio=tip.ratio)
  
  res <- c()
  
  for(i in 1:4){
    
    idx <- which(tips.new[,'type']==i)
    tips.tmp <- tips.new[idx,]
    res.tmp <- apply(tips.tmp[c('type','total_bill','tip','ratio')],2,mean)
    res <- rbind(res,res.tmp)
  
  }
  
  rownames(res) <- 1:4
  
  return(tips.new)
  
}

categorize.tip(tips)
