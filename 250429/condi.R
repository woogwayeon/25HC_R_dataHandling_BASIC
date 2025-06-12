job.type <- 'A'

if(job.type == 'B'){
  bonus <- 200
} else{
  bonus <- 100
}

print(bonus)


#--------------------------------------------------

job.type == 'A'
bonus <- 100        # 그냥 조건을 설정해놓고 else문을 없앰앰
if(job.type =='B'){
  bonus <- 200
}
print(bonus)


#--------------------------------------------------

a <- 10

if(a<5){
  print(a)
}else{
  print(a*10)
  print(a/10)
}

#--------------------------------------------------

a <- 10
b <- 20

if(a>5 & b>5){    # and..를 하나만쓴다!
  print(a+b)
}
if(a>5 | b>5){    # or도.. 하나만쓴다!
  print(a*b)
}

#--------------------------------------------------

# ifelse (실행 조건, 참일 경우 실행, 거짓일 경우 실행)

a <- 10
b <- 20
c <- ifelse(a>b, a, b) # a가 b보다 작으니까 거짓, b의 값인 20 출력됨

#--------------------------------------------------

score <- 88

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
