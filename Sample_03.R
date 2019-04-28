
# R Data frame
# 데이터 프레임을 생성하고 "sex", "score"라는 벡터 데이터를 입력한다.
data<-data.frame(sex=c("M","F",NA,"M","F"),score=c(4, 5, 3, 4, NA))

data

# check Missing value
# is.na() 함수로 결측치를 확인한다.
is.na(data)
table(is.na(data))

# install.packages("dplyr")
# score 변수에 결측치 데이터를 출력하고 제거한다.
library(dplyr)
data %>% filter(is.na(score))
data %>% filter(!is.na(score))

# 결측값 제거 후 평균계산
data_nomiss<-data %>%filter(!is.na(score))
mean(data_nomiss$score)

# n개 변수 결측값 제거
data_nomiss<-data %>% filter(!is.na(score) & !is.na(sex))
data_nomiss

# 모든 결측치 한번에 제거
data_nomiss<-na.omit(data)
data_nomiss

# na.rm = T 옵션은 결측치를 제거하고 평균을 계산한다.
x=mean(data$score, na.rm = T)

# 만약 score 값이 NA이면 x(평균)으로 대체한다.
data$score<-ifelse(is.na(data$score),x,data$score)
data

# 극단적인 값 확인
test=c(1, 500, 550, 400, 590, 600)
boxplot(test)

# 극단적인 값은 NA로 넣고 boxplot을 그릴 때 NA는 제외한다.
test=c(1, 500, 550, 400, 590, 600)
test<-ifelse(test>=500&test<=600, test, NA)
test

boxplot(test, ra.rm=T)

# case1.txt 파일을 읽는다.
# 용량이 큰 파일을 불러올때 경고 표시가 나는데 quote="" 를 사용해서 방지
setwd(dir="C:\\data\\analyzeMFT-master")
car<-read.table(file=".\case1.txt", sep="\t", header = T, quote="")
head(car) # 상위 6개의 지출을 출력한다.
dim(car) # 관측치와 변수를 확인한다.
