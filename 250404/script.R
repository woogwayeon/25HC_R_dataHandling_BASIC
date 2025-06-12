# Fector
# 문자열 데이터가 저장되는 팩터중 하나!
# 저장되는 문자값이 어떤 종류를 나타내는 값일 때 사용함

bt <- c('A', 'B', 'B', 'O', "AB", 'A')
bt.new <- factor(bt)
bt
bt.new
bt[5]
bt.new[5]
levels(bt.new)
bt.new[7] <- 'B'
bt.new[8] <- 'C'
bt.new


# List

h.list <- c('balling', 'tennis', 'ski')
person <- list(
            name="seoyeon",
            age=25,
            student = TRUE,
            hobby = h.list
        )
person

person[[1]]
person$name

person[[4]]

person[[4]][1]
person$hobby[1]

# R cafe의 매출액 분석하기

cafe <- list(
  espresso = c(4, 5, 3, 6, 5, 4, 7),
  americano = c(63, 68, 64, 68, 72, 89, 94),
  latte = c(61, 70, 59, 71, 71, 92, 88),
  price = c(2.0, 2.5, 3.0),
  menu = c('espresso', 'americano', 'latte')
)

cafe$menu <- factor(cafe$menu)
cafe$menu

names(cafe$price) <- cafe$menu
cafe$price['espresso']
cafe$espresso

sale.espresso <- cafe$price['espresso'] * cafe$espresso
sum(sale.espresso)

sale.americano <- cafe$price['americano'] * cafe$americano
sum(sale.americano)

sale.latte <- cafe$price['latte'] * cafe$latte
sum(sale.latte)

sale.days <- sale.espresso + sale.americano + sale.latte
sale.days

names(sale.days) <- c("Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun")
sale.days

sum(sale.days)

sale.mean <- mean(sale.days)
sale.mean

sale.days[sale.days >= sale.mean]
names(sale.days[sale.days >= sale.mean])


# 월별 감전사고 통계 분석하기

acc <- c(31,26,42,47,50,54,70,66,43,32,32,22)
names(acc) <- c('M1', 'M2', 'M3', 'M4', 'M5', 'M6', 'M7', 'M8', 
                'M9', 'M10', 'M11', 'M12') 
acc

sum(acc)
max(names(acc))
min(names(acc))

# 사고율이 10% 떨어진다면?
acc * 0.9

# 10% 떨어진 사고율의 반올림 수치
round(acc * 0.9)  

# sol.01
month.50 <- acc[acc >= 50]
names(month.50)

# sol.02
names(acc[acc>=50])

# 사고건수가 50 미만딘 달은 1년중 몇개월?
length(acc[acc<50])

# 6월보다 사고가 많은 달과 사고 건수를 구해보자
M6.acc <- acc[6]
acc[acc>M6.acc]

# 한줄로 처리하기
acc[acc>acc[6]]


