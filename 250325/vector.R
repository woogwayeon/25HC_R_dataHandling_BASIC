x <- c(1,2,3)
y <- c('a','b','c')
z <- c(TRUE,FALSE,TRUE)
x
y
z


absent <- c(8,2,0,4,1)
absent

names(absent)
names(absent) <- c('Agu','Feb','zero','Apr','Jan')
names(absent)
absent

absent[1]
absent['zero']

install.packages("ggplot2")
library("ggplot2")

v1 <- seq(1,101,3)
v1

v2 <- rep(1, times=5)
v2

v3 <- rep(1:5, times=3)
v3

d <- c(1,3,4,5,7,8)

d[c(1,3,5)] #1,3,5 번째 자료 출력
d[1:3] # 1-3 자료 츌룍
d[seq(1,5,2)] # 홀수 자료 출력
d[-2] # -2번 인덱스 자료 제외하고 출력
d[-c(3:5)] # 3-5까지 제외하고 출ㄹ력력
d[1]
d[2]
d[3]
d[4]
d[5]
d[6]

sales <- c(640,720,680,540)              # 1-4월 매출액
names(sales) <- c('M1','M2',"M3","M4")   # 매출액에 월을 이름으로 붙임
sales

sales[1]                                 # 1월 매출액 출력
sales["M2"]                              # 2월 매출액 출력
sales[c('M1','M4')]                      # 1월, 4월 매출액 출력


# 백터에 저장된 원소값 변경
v1 <- c(1,5,7,8,9)
v1
v1[2] <- 3
v1[2]
v1[c(1,5)]<-c(10,20)
v1
v1<-c(100,200,300)                       # 내용물 아예 변경
v1

# 만기 금액 = 원금 (1+연이율/100)^기간
customer <- c('kim', 'lee', 'park', 'choi', 'seo')
deposit <- c(5000000, 4500000, 4000000, 5500000, 6000000)
rate <- c(3.5, 3, 4, 5, 4.5)
period <- c(2, 2, 5, 7, 4)

names(deposit) <- customer
names(rate) <- customer
names(period) <- customer

who <- customer
period[who]

tot = deposit[who]*(1+rate[who]/100)^period[who]
tot



# 함수의 개념

y <- sqrt(100)  # 100의 제곱근을 구하여 변수 y에 저장함
y               # y에 저장된 값을 출력한다

# sort()

d <- c(1,7,4,2,3)
sort(d)                        # 오름차순 정렬 (decreasing = FALSE) < default
sort(d, decreasing=TRUE)       # 내림차순 정렬
?sort()


# 매개변수의 생략
sort(x=d, decreasing = FALSE)
sort(d, FALSE)

# 매겨변수값을 함수에 지정된 순서대로 입략하는 경우 변수명 생략가능
sort(x=d, FALSE)
sort(d, decreasing= FALSE)


# default 값을 사용하는 것
# sort(x=d, decreasing=TRUE)  # 참고로 TRUE가 되면 반대가 나온다
sort(x=d, decreasing=FALSE)
sort(x=d)  # default가 FALSE기 때문에 위와 같은 출력결과 나옴
sort(d)    # 매개변수명의 생략

# paste() - 문자열 출력시 많이 사용하는 함수
# 문자열과 moring을 결합해서 str에ㅓ~
str <- paste('good', 'morning', sep=' / ') # separate (분리된)
str
? paste()

a <- "서연의 나이는"
b <- 20
c <- "입니당"
paste(a,b,c, sep=" ")


# 차례로 가져와서 b에 연결
a <- 1:12
b <- '월'
c <- paste(a,b, sep='')
c


# 월별 매출액 자료 만들기  // 나눠서 찾기 나폴레옹 디바이드 어쩌구
sales <- c(750,740,760,680,700,710,850,890,700,720,690,730)
names(sales) <- paste(1:12, '월', sep='')
sales

sales['7월']

sales['1월']+sales['2월']

max.month <- sort(sales, decreasing=TRUE)   
# default가 FALSE니까 TRUE하면 내림차순
max.month[1] # 1번 뽑으면 제일 큰 값이 나옴


# 상반기 매출액의 합계 (indexing, slicing)
sum(sales[1:6])
