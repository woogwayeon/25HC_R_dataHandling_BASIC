# r에서의 입력과 출력
age <- c(28, 17, 35, 46, 23, 67, 30, 50)

# 정보 추출
young <- min(age)
old <- max(age)

# 처리 결과 출력
cat("가장 젋은 사람의 나이는", young, "이고,\n가장 나이든 사람의 나이는", old, "입니다")


# 화면에서 데이터 입력받기
# install.packages : svDialogs를 설치해야 한다
install.packages("svDialogs")
library(svDialogs)

user.input <- dlgInput('희망 연봉을 입력하세요')$res
income <- as.numeric(user.input)
tax <- income * 0.05
cat("희망 연봉은 [ ",income," ] 만원, 세금은 [ ",tax, " ] 만원 입니다")

# print()와 cat()
x <- 26
y <- "입니다"
z <- c(10, 20, 30, 40)

# print() 하나의 값 출력
print(x)
print(y)
print(z)
print(iris[1:5, ])

# print() 두개의 값 출력시 에러발생
print(x, y)


# cat() 하나의 값 출력
cat(x)
cat(y)

# cat() 벡터 출력
cat(z,"\n")

# cat() 두개의 값 연결하여 출력
cat(x,y)
cat(x,y,"\n")

# 데이터 프레임 출력시 에러 발생
cat(iris[1:3]) 


# 체질량 지수 계산하기 (BMI)
library(svDialogs)

height <- dlgInput("키를 입력하세요 (cm)")$res
weight <- dlgInput("몸무게를 입력하세요 (kg)")$res

height <- as.numeric(height)
weight <- as.numeric(weight)

height <- height / 100
bmi <- weight / (height ^ 2)

cat("입력한 키는 ",height*100,"cm / 몸무게는 ",weight,"kg 입니다 \n", sep="")
cat("BMI는 ",bmi," 입니다")
