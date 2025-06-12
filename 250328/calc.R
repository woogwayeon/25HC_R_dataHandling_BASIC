# 자료의 종류 : 입욕제, 코로나핀
# 차원의 조작


# 백터에 대한 산술연산
d <- c(1,4,3,7,8)
2*d
d-5
3*d+4

# 백터와 백터의 연산
x <- c(1,2,3,4)
y <- c(5,6,7,8)        # 원소가 다르면 이상하게 계산됨
x+y                # 대응하는 원소끼리 더하기
x*y                # 대응하는 원소끼리 곱하기
z <- x+y           # z라는 변수에 저장
z

a <- c(1,2,5,6,7)
b <- c('a', 'b', 'c', 'd', 'e')
a+b

m <- c(x,y)  # x, y의 원소들을 결합하여 m에 저장
m
n <- c(y,x)  # y, x의 원소들을 결합하여 n에 저장
n
p <- c(x,y, 90, 100)  # x, y의 원소들과 90, 100을 결합하여 100에 저장
p


# 숫자와 문자 벡터의 결합

v1 <- c(1,2,3,4)
v2 <- c('서연', '아인', '정근')
v3 <- c(v1, v2)
v3              # 숫자가 문자로 결합되어 결과가 나옴                


# mean, median

d <- c(1,2,3,4,5,6,7,8,9,10,11) # 홀수일 때 median
sum(d)
sum(2*d)
length(d)
mean(d[1:5])
max(d)
min(d)
sort(d)
sort(d, decreasing = FALSE)
sort(d, decreasing = TRUE)

# ctrl + l > 청소하기

v1 <- median(d)
v1
v2 <- sum(d)/length(d)
v2
v3 <- mean(d)
v3


test <- c(1,3,10,15,20)
t1 <- median(test)
t1
t2 <- mean(test)
t2

test2 <- c(1,3, 10, 15, 200)
tt1 <- median(test2)
tt1
tt2 <- mean(test2)
tt2

?median()




# 논리연산자 활용

d <- 1:9
d >= 5             # d 원소 각각이 >=5 인지 검사 
d[ d > 5 ]
sum( d[ d > 5 ] )
d == 5

condi <- d>5 & d <8
d[condi]
