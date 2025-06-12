# 팩터 : 문자형 데이터가 저장되는 백터의 일종!
# 저장되는 문자값들이 어떠한 종류를 나타내는 값일때 사용하고, 
# 정의안된거 넣으면 뻑남(?) -> 왜쓸까?

bt <- c('A', 'B', 'B', 'O', 'AB', 'A') # 문자형 백터 만들고 요소넣기
bt.new <- factor(bt)                   # 팩터 정의 - 팩터 만들때 : factor()
bt
bt.new
bt[5]
bt.new[5]                             # 팩터의 5번째 값을 뽑아보자
levels(bt.new)
# ?levels()
as.integer(bt.new)                    # 팩터의 문자값을 숫자로 바꿔 출력
bt.new[7] <- 'B'
bt.new[8] <- 'C'
bt.new


# 리스트 - 모든 자료형 다 때려넣는 짬뽕!!

h.list <- c('balling', 'tennis', 'ski')

person <- list(name='tom', age=25, student=TRUE, hobby=h.list)
          # 리스트 만듦 : list()
person    # 일단 다 출력해보기   

person[1]
person[[1]]
person$name

person[[4]]
person[[4]][1]



# R 카페의 요일 매출을 리스트랑 팩터를 이용해서 해보자!

# 1. 리스트를 만들어서 메뉴별로 판매량, 가격, 메뉴이름을 저장
cafe <- list(
          espresso = c(4, 5, 3, 6, 5, 4, 7),
          americano = c(63, 68, 64, 68, 72, 89, 94),
          latte = c(61, 70, 59, 71, 71, 92, 88),
          price = c(2.0, 2.5, 3.0),
          menu = c('espresso', 'americano', 'latte')
)

cafe

# 2. 만든 리스트에서 메뉴만 추출해 팩터로 변경합니당!
cafe$menu <- factor(cafe$menu)

# 3. 리스트 내 가격 백터를 선택해서 값의 이름을 메뉴명으로 설정합니당!
names(cafe$price) <- cafe$menu

# 4. 리스트에서 가격 백터를 선택하고 -> 거기서 메뉴에 해당하는 가격을 선택!
# 그리고 리스트에서 메뉴명에 해당하는 판매량을 선택해 곱하기한다
# 각 메뉴별로 반복하면 요일별로 매출액을 구해서 새로운 변수에 저장함
cafe$price['espresso']
cafe$espresso

sale.espresso <- cafe$price['espresso'] * cafe$espresso
sum(sale.espresso)

sale.americano <- cafe$price['americano'] * cafe$americano
sum(sale.americano)

sale.latte <- cafe$price['latte'] * cafe$latte
sum(sale.latte)

# 5. 요일별로 매출액, 총 매출액, 평균 매출액, 평균 이상인 요일 찾기!
sale.day <- sale.espresso + sale.americano + sale.latte
sum(sale.day)
sale.mean <- mean(sale.day)
sale.mean
names(sale.day[sale.day >= sale.mean])
names(sale.day[sale.day >= mean(sale.day)]) # 변수 저장안하고 한줄로 해보기



# 월별 감전사고 통계 분석하기
accident <- c(31,26,42,50,54,70,66,43,32,32,22)
names(accident) <- c('M1','M2','M3','M4','M5','M6','M7','M8','M9','M11','M12')
accident

# 일년간 총 감전사고 건수
sum(accident)

# 가장 사고가 많은 달과 적은 달
max(names(accident))
min(names(accident))

# 만약 사고율이 10% 감소한다면 건수는 어떻게 바뀔까?
accident*0.9
ceiling(accident*0.9) # 소수점 정리
floor(accident*0.9)   # 버림
round(accident*0.9)   # 반올림, 매개변수 두번째 인자로 자리수

# 사고건수가 50건 넘는 달은?
accident[accident>=50]

# 사고건수 50건 넘는 달 이름을 뽑아보자
names(accident[accident>=50])

# 사고 건수가 50 미만인 달은 1년중 몇개월일까?
length(accident[accident<50])

# 6월보다 사고가 많은 달과 사고 건수를 구해보자!!
M6.acc <- accident[6]
accident[accident > M6.acc]
