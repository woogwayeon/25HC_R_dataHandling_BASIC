# 햄버거 영양 성분 정보 저장하기!

hamburger <- matrix(c(514,533,566,917,853,888,11,13,10), nrow=3)
hamburger

rownames(hamburger) <- c('M', 'L', 'B') 
colnames(hamburger) <- c('kcal', 'na', 'fat')

hamburger

hamburger['M', 'na']   # 'M' 사의 나트륨 정보만 추출
hamburger['M',]        # 'M' 사의 영양정보들 (즉, row) 추출
hamburger[,'kcal']     # 각 햄버거 회사들의 'kcal' 만 추출

fat2 <- hamburger[,'fat'] * 2

hamburger <- cbind(hamburger,fat2)
hamburger
