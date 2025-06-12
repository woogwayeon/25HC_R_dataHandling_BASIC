# Data-frame Remind

city <- c('seoul', 'tokyo', 'wasington') # 문자로 이루어진 벡터
rank <- c(1, 3, 2)                       # 숫자로 이루어진 벡터
city.info <- data.frame(city, rank)      # 데이터프레임 제작

# 형변환을 위해 as.data.frame
city.info2 <- cbind(city, rank)
as.data.frame(city.info2)


# iris 데이터셋 사용해보기
iris[, c(1:2)]
iris[, c(1,3,5)]
iris[, c("Sepal.Length", "Species")]
iris[1:5, ]
iris[1:5, c(1, 3)]

# 다섯번째만 뽑아보는 여러가지 방법을 생각해보자!
iris[, 5] 


# 햄버거 영양 성분 정보 추가하기
kcal <- c(514, 533, 566)
na <- c(917, 853, 888)
fat <- c(11, 13, 10)
menu <- c('새우', '불고기', '치킨')
burger <- data.frame(kcal, na, fat, menu)

rownames(burger) <- c('M', 'L', 'B')

burger['M', 'na']
burger['B', ]
burger[, 'fat']
burger[c('M', 'B'), 'na']
burger[c('M', 'L'), c('kcal', 'menu')]

# m사의 숫자만 더해보자
sum(burger['M', c('kcal', 'na', 'fat')])
