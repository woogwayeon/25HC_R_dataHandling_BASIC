setwd('D:\\2025_KoSeoyeon\\250513')

mydiv <- function(x, y=4){
  result <- x/y
  return(result)
}


myfunc <- function(x,y){
  val.sum <- x+y
  val.mul <- x*y
  return(list(val.sum, val.mul))
  # list 자료형일때 대괄호 두개 쓰기
}

# 자격증 합격 여부 판단하기

determine <- function(score){
  
  total <- apply(score, 1, sum)
  scoreset <- cbind(score, total)
  result <- c()
  
  for(i in 1:nrow(scoreset)){
    
    if(scoreset[i,1]<20*0.4 |
       scoreset[i,2]<20*0.4 |
       scoreset[i,3]<60*0.4){
      
      result[i] <- '불합격'
    
    }else if(scoreset[i,4]>=60){
    
      result[i] <- '합격'
          
    }else{
      
      result[i] <- '불합격'
      
    }
    
    # cat(i,'번째 응시생은',result[i],'입니다\n')
    
    return(result)
  }
      
}
