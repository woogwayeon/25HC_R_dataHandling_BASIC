sales <- c(640, 720, 680, 540)
names(sales) <- c('M1', 'M2', 'M3', 'M4')
sales
sales['M2']
sales[c('M1', 'M2')]

v1 <- c(1,5,7,8,9)
v1
v1[2]
v1[c(1,5)] <- c(10,20)
v1
v1<-c(100,200,300)
v1



# 만기 금액 = 원금 * (1+연이율/100)^기간

customer <- c('kim', 'lee', 'park', 'choi', 'seo')

deposit <- c(5000000, 4500000, 4000000, 5500000, 6000000)

rate <- c(3.5, 3, 4, 5, 4.5)

days <- c(2, 2, 5, 7, 4)

names(deposit) <- customer
names(rate) <- customer
names(days) <- customer

who <- customer
days[who]

tot = deposit[who]*(1+rate[who]/100)^days[who]
tot




# 함수의 개념

y <- sqrt(100)  # y는 함수의 결과값을 저장하고 있다!
y


# 함수 오름차순 내림차순

d <- c(1,7,4,2,3)
?sort
sort(d)
sort(d, decreasing = TRUE)


# 매개변수의 생략
sort(x=d, decreasing=FALSE) # 정식 문법
sort(d, FALSE)              # 생략 문법

sort()                      # 기본값이 없는 인수가 없다고 한다!

a <- '나의 나이는'
b <- '20 입니다'
paste(a,b,c, sep='')


a <- 1:12
b <- '월'
 c <- paste(a, b, sep=" ")

 
# 매출액
sales <- c(750,740,760,680,700,740,850,89,700,780,690,730)
names(sales) <- paste(1:12, '월', sep="")
sales 


# 정렬
sales['7월']
sales['1월']+sales['2월']
max.month <-(sales, decreasing=T)

sum(sales[1:6])

