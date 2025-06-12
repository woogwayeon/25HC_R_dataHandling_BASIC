setwd('D:\\2025_KoSeoyeon\\250520')
library('reshape2')
str(tips)

unique(tips$sex)[2]

idx <- which(tips[, 'sex']==unique(tips$sex)[1])
avg.female <- mean(tips[idx, 'tip'])

idx <- which(tips[, 'sex']==unique(tips$sex)[2])
avg.Male <- mean(tips[idx, 'tip'])

unique(tips$smoker)[2]

idx <- which(tips$smoker=='Yes')
avg.smoker <- mean(tips[idx, 'tip'])

idx <- which(tips$smoker=='No')
avg.nonsmoker <- mean(tips[idx, 'tip'])



# colname <- 'sex'
# meanbycol.tip <- function(tips, colname){
# 
#   a <- unique(tips[, colname])
#   
#   idx <- which(tips[, colname]==a[1])
#   avg1 <- mean(tips[idx, 'tip'])
#   
#   idx <- which(tips[, colname]==a[2])
#   avg2 <- mean(tips[idx, 'tip'])
#   
#   return(list(avg1, avg2, a))
# }


# 함수를 만들어보자 (정답)
meanbycol.tip <- function(colname){
  
  value <- unique(tips[, colname])
  result <- list()
  
  for(i in 1:length(value)){
    
    print(i)
    print(value[i])
    idx <- which(tips[, colname] == value[i])
    result[i] <- mean(tips[idx, 'tip'])
    
  }  

  names(result) <- value
  return(result)
}

meanbycol.tip('sex')
meanbycol.tip('type')



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
    res.tmp <- apply(tips.tmp[c('type','total_bill','tip','ratio')],2,mean)
    res <- rbind(res, res.tmp)
    
  }
  rownames(res) <- 1:4
  # 1번 타입일때 7정도 비율, 4타입(팁 젤높으면 24정도?)
  
  return(tips.new)
  
}
categorize.tip(tips)

