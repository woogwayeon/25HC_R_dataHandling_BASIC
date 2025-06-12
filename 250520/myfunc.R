mymax <- function(z,y){
  num.max <- z
  if(y>z){
    num.max <- y
  }
  return(num.max)
}

mydiv <- function(x,y=3){
  result <- x/y
  return(result)
}
