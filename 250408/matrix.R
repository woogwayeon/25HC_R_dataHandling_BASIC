x <- matrix(1:20, nrow=4, ncol=5)
x

z <- matrix(1:20, nrow=4, ncol=5, byrow=TRUE)
z

x <- 1:4
y <- 5:8
z <- matrix(1:20, nrow=4, ncol=5)  # 매트릭스 z를 만듦

m1 <- cbind(x,y)                   # x,y를 열 방향으로 결합해서 매트릭스 만들기
m1

m2 <- rbind(x,y)                   # x,y를 행 방향으로 결합해서 매트릭스 만들기
m2

m3 <- rbind(m2,z)                 
m3

m4 <- cbind(z,x)
m4

# bind는 벡터든 매트릭스든 붙일 수 있다
z <- matrix(1:20, nrow=4, ncol=5)
z
mtest <- cbind(z,z)
z
mtest


z <- matrix(1:20, nrow=4, ncol=5)
z

z[2,3]
z[1,4]
z[2,]
z[,4]


# 여러개의 값 추출

z <- matrix(1:20, nrow=4, ncol=5)
z

z[2,1:3]
z[1, c(1, 2, 4)]
z[1:2, ]
z[,c(1,4)]




# 행과 열에 이름 붙이기

score <- matrix(c(90,85,69,78,85,96,49,95,90,80,70,60), nrow=4)
score

rownames(score) <- c('정근', '아인', '서연', '교수님')
colnames(score) <- c('english', 'math', 'science')

score

score['정근', 'english']
score['아인', c('math', 'english')]
score[, 'english']
rownames(score)
colnames(score)
colnames(score)[2]
