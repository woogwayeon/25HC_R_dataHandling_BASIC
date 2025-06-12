# 사용자 정의 함수

mymax <- function(x, y){
  num.max <- x
  if(y>x){
    num.max <- y
  }
  return(num.max)
}

m1 <- mymax(10, 20)
m2 <- mymax(22, 10)
print(m1 + m2)

#---------------------------------------------------

mydiv <- function(x, y=2){
  result <- x/y
  return(result)
}

mydiv(x=10, y=5) # 값을 정확하게 전달
mydiv(10, 5)     # 매개변수 자리에 알맞게 값을 전달
mydiv(10)        # 기본값 설정된 상태로 매개변수 하나만 사용



#----------------------------------------------------


myfunc <- function(x,y){
  
  val.sum <- x+y 
  val.mul <- x*y
  val.sub <- x-y
    
  # 결과값을 리스트로 한번에 리턴함
  return(list(sum=val.sum, mul=val.mul, sub=val.sub))
}

result <- myfunc(5,8)

class(result)

# result에 list가 리턴되어 있으니 달러로 접근가능
s <- result$sum
m <- result$mul
sb <- result$sub

# cat으로 출력해보자!
cat("5+8=",s)
cat("5*8=",m)
cat("5-8=",sb)



#----------------------------------------
setwd("D:\\2025_KoSeoyeon\\250509")
source('myfunc.R')

a <- mydiv(20,4)
b <- mydiv(30,4)
a+b

source('seoyeon.R')
a <- yeon.func(33, 12)
