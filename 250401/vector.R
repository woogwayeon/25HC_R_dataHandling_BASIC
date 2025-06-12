# 벡터 자체에다 연산
d <- c(1,2,3,7,8)
2*d
d-5
3*d+4

# 백터와 백터의 연산
x <- c(1,2,3,4)
y<- c(5,6,7,8)
x+y # 원소끼리 더하기
x*y # 원소끼리 곱하기
z <- x+y # 원소끼리 더해서 z라는 변수에 저장함
z

# 연결되는 백터!
m <- c(x, y)
m
n <- c(y,x)
n
p<-c(x,y,90,100)
p

# 숫자와 문자 백터 결합 > 문자가 된다
v1 <- c(1,2,3,4)
v2 <- c('서연', '아인', '정근')
v3<- c(v1, v2) # v1의 원소와 v2의 원소를 함께 v3라는 변수에 저장
v3

# 벡터에 적용되는 함수들
d <- c(1,2,3,4,5,6,7,8,9,10)
sum(d)
sum(2*d)
length(d)
mean(d[1:5]) # 질문문
max(d)
min(d)
sort(d)
sort(d, decreasing = FALSE)
sort(d, decreasing = TRUE)


# 벡터에 논리연산자 써보자!
d <- 1:9
d>=5        # d 원소 각각이 >=5 인지 논리검사
d[d>5]      # d 중에서 5보다 큰 친구들
sum(d>5)    # 5보다 큰 원소 개수!!가 몇갠지
sum(d[d>5]) # 5보다 큰 원소들을! 더하기!
d==5        # 5인애만 찾아서 논리연산

condi <- d>5 & d<8  # 조건문을 condi라는 변수에 저장
d[condi]            # 백터의 인덱스에 컨디션을 저장함



# 벡터를 이용해서 매출액 분석하기 - 많이 팔린 요일은 무슨 요일일까?

# 1. 메뉴별로 벡터를 만들어서 판매량 요일순으로 저장
espresso <- c(4, 5, 3, 6, 5, 4, 7)
americano <- c(63, 68, 64, 68, 72, 89, 94)
latte <- c(61, 70, 59, 71, 71, 92, 88)


# 2. 메뉴별 판매량에 가격을 곱함
sale.espresso <- 2.0*espresso
sale.americano <- 2.5*americano
sale.latte <- 3.0*latte


# 2.5 어느 메뉴가 매출에 영향을 많이 미치는지 알아보자
sum(sale.espresso)
sum(sale.americano)
sum(sale.latte)


# 3. 각 메뉴 매출액을 더해서 요일별 매출액 구하고 새로운 변수에 저장 (요일로)
sale.day <- sale.espresso + sale.americano + sale.latte
names(sale.day) <- c('Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun')
sale.day

# 4. 요일별 매출액을 더해! -> 일주일 총매출 확인하자
sum(sale.day)

# 5. 요일별 매출액 벡터를 사용해서 일 평균 매출액 알아내고, 새로운 변수에 저장
sale.mean <- mean(sale.day)
sale.mean

# 6. 각 요일의 매출액과 평균 매출액 비교해서 평균 이상인 요일을 구한다!
names(sale.day[sale.day >= sale.mean])
names(sale.day[sale.day >= mean(sale.day)]) # 변수 저장안하고 한줄로 해보기


# 질문 - max()를 쓰지 않은 이유?
