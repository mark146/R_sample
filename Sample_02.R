# if 문 사용
x = 100
if (x>=100) {
  print("x는 100보다 크거나 같다.")
} else {
  print("x는 100보다 작다.")
}


# 반복문 사용
# i를 1부터 5까지 5번 반복한다.
for(i in 1:5) {
 print("Hello R Script")
}


# cat은 문자열을 출력하는 함수이다.
for(i in 1:5) {
  cat("test", i, "\n")
}


# R언어 while문 예제
j=0
while(j<5){
  print(j<-j+1)
}


# R언어 사용자 정의 함수 사용
usersum<-function(x){
  return(x+1)
}
usersum(10)


# 패키지 도움말
help("plot")


# 패키지 설치
install.packages("패키지명")
install.packages("c:\\data\\패키지명")


# 패키지 사용
library("패키지명")
library("mxnet")


# 패키지 업데이트
update.packages("패키지명")
update.packages("mxnet")


# 패키지 삭제
remove.packages("패키지명")
remove.packages("mxnet")


# 설치되어 있는 패키지 목록 확인
search()


# 설치되어 있는 패키지 목록 및 경로까지 확인
searchpaths()


# 패키지가 어떤 경로에 설치되는지 확인
.libPaths()


# 외부파일 읽기
test = read.table(file='C:\\data\\test.txt',
                  header=TRUE, # 파일의 첫 줄을 칼럼명으로 인식여부
                  sep=" ") # 칼럼 구분자 
test
test$name # $칼럼명 입력시 칼럼에 속한 내용들 출력
test$x1
test$x2


# csv 파일읽기
setwd(dir="C:\\data\\analyzeMFT-master") # 파일이 있는 디렉터리 위치 지정
iris<-read.csv("sample1.csv") # csv 파일을 읽음
iris


# 엑셀 파일 읽기
install.packages("readxl") # 라이브러리 다운로드 있을시 패스

library(readxl)
setwd("C:\\data\\")
excel = read_excel(path = "sample.xlsx", # 엑셀 파일 읽기
                  sheet="Sheet1", # 시트명 지정
                  col_names=TRUE) # true일시 엑셀의 칼럼명 사용
excel


# 실습
setwd("C:\\data\\analyzeMFT-master\\")
read.csv("sample1.csv")
sample1 = read.table(file="sample1.csv", header=TRUE)
sample1

x1 = substr(sample1$createtime,1,8)
x1

sample1$createtime = substr(sample1$createtime,1,8)
sample1$createtime


#ggplot2 패키지 설치
install.packages("ggplot2")
library("ggplot2")
diamonds


# 빈도수를 확인
library("ggplot2")
table(diamonds$cut)


# sort 함수로 내림차순으로 조회
sort(table(diamonds$cut), decreasing=TRUE)


# 백분율 계산
prop.table(table(diamonds$cut))
prop.table(table(diamonds$cut))*100


# 반올림
round(prop.table(table(diamonds$cut))*100, digits=1) # 소수점 첫째짜리에서 반올림


# 빈도와 백분율을 한번에 계산
install.packages("prettyR")
library(prettyR)
freq(diamonds$cut, display.na=FALSE) # "display.na=FALSE"는 결측값을 제외한다.


# 막대 그래프 표시
barplot(table(diamonds$cut), col="red", main="test barchart")


# ylab: y축 제목, ylim: 눈금범위 지정
barplot(table(diamonds$cut), col="red", ylab="빈도",ylim=c(0,26000), 
        main="test barchart")


# ggplot2를 사용한 막대 그래프
# aes 함수는 x축 혹은 y축에 입력된 데이터이다.
ggplot(data=diamonds, mapping=aes(x=cut)) + geom_bar()


# 원 그래프를 표시
pie(table(diamonds$cut))


# 반지름을 최대로 지정한다.
pie(table(diamonds$cut), radius=1)


# 시작하는 각도를 -30으로 지정한다.
pie(table(diamonds$cut), radius=1, init.angle = -30)


# 히스토그램 작성
hist(diamonds$price)


# 지정한 구간 데이터로 히스토그램 작성
hist(diamonds$price, breaks = c(0, 5000, 10000, 15000, 20000))


# 사용자가 지정한 구간의 개수로 가시화
hist(diamonds$price, breaks = 10)


# 상자그림 작성
boxplot(diamonds$price)


# range 이상값을 분석하기 위해 사용 
boxplot(diamonds$price, range = 3)


# 양적자료 ~ 질적자료
boxplot(diamonds$price~diamonds$cut)
