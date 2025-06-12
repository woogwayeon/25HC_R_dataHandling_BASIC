yeon.func <- function(x,y){
  
  val.sum <- x+y 
  val.mul <- x*y
  val.sub <- x-y
  
  # 결과값을 리스트로 한번에 리턴함
  return(list(sum=val.sum, mul=val.mul, sub=val.sub))
}
