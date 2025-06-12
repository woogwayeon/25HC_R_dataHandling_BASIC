# 매트릭스 만들기 -> 그리고 결과물에 다시 접근!

z <- matrix(1:20, nrow=4, ncol=5)
# nrow = 4 는 매트릭스행의 갯수
# ncol = 5 는 매트릭스열의 갯수


z2 <- matrix(1:20, nrow=4, ncol=5, byrow=T) # byrow는 표를 그 돌리는거!
z2


# 매트릭스를 돌려가면서 출력

x <- 1:4
y <- 5:8
z <- matrix(1:20, nrow=4, ncol=5)

m1 <- cbind(x,y)
m1

m2 <- rbind(x,y)
m2

m3 <- rbind(m2,x)
m3

m4 <- cbind(z,x)
m4


z <- matrix(1:20, nrow=4, ncol=5)
z

z[2,3]
z[1,4]
z[2,]   # 두번째 행 전부다!
z[,4]   # 네번째 열 전부다!


z <- matrix(1:20, nrow=4, ncol=5) # 매트릭스 만들기
z

k <- matrix(1:20, 5, 4) # 매트릭스 만들기(매개변수명 생략가능)
k

z[2, 1:3]                         # 2행의 1-3까지 출력
z[1, c(1,2,4)]                    # 2행값중 1,2,4 열 출력력
z

z[1:2,]                           # 1행부터 2행까지 출력
z[,c(1,4)]                        # 1, 4열 출력


# 행과 열에 이름 붙이기 (매트릭스에 이름 붙이기)
score <- matrix(c(90,85,69,78,85,96,49,95,90,80,70,60), nrow=4)
score

rownames(score) <- c('정근','아인','서연','교수님')
colnames(score) <- c('English', 'Math', 'Science') # 의미가 있기 때문에 피쳐!
score

score['정근','Math']
score['아인', c('Math','Science')]
score['서연',]
score[,"English"]

rownames(score)
colnames(score)
colnames(score)[1:2]

score["서연",][2]

a = "정근"
b = "Math"
score[a,b]
