# R data type
x1 = 1 # 정수
x2 = "I Can do it" #문자열
x3 = FALSE # 논리형
x4 = 3.14 # 실수형


#데이터 타입을 확인
mode(x1)
mode(x2)
mode(x3)
mode(x4)


# 형 변환
as.numeric(x3) # 논리형을 정수로 변환
as.integer(x4) # 실수형을 정수로 변환


#c() 함수 사용
c1 = c(1, 5, 10)
c2 = c("조조", "관우", "조자룡")
c3 = c(TRUE, FALSE)
c4 = c(2, 6, 9)


# 벡터의 결합
c5 = c(c1, c4)
c5


# 콜론(:) 함수
d1 = 1:10
d1
d2 = 10:1 # 콜론은 1씩 증가시키거나 1씩 감소시킨다. 
d2
d3 = -1:1
d3


# seq() 함수
e1 = seq(from=1, to=10, by=1)
e1
e2 = seq(from=1, to=10, by=2) # 1부터 10까지 2씩 증가시켜서 e2 벡터에 저장한다.
e2


# sequence() 함수
# f1은 1부터 10까지 1씩 증가시킨다. f2에 5.7을 입력해도 정수까지만 증가 시킨다.
f1 = sequence(10)
f1
f2 = sequence(5.7) 
f2
f3 = sequence(-1) # 음수를 지정하면 오류가 발생함
f3


# rep() 함수
g1 = rep("test", times=3) # g1에 test 문자열이 3번 복제되어 저장
g1
g2 = rep(c("a","b"), times=3) # g2에 a, b 문자열이 3번 복제되서 저장
g2


# cbind() 함수
h1<-c(5,6,7,6)
h1
h2<-c(5,6,7,8)
h2
y<-cbind(h1,h2) # 열을 기준으로 벡터를 결합
y


# rbind() 함수 
z<-rbind(h1,h2) # 행을 기준으로 벡터를 결합
z


# 요인(Factor)
gender = c("m","m","f","f","m")
gender
gender_f = factor(gender)# 범주형 데이터의 집단을 확인한다.
gender_f


# 행렬 생성
i1<-matrix(c(1:10), ncol=2)
i1
i2<-matrix(c(1:20), nrow=4)
i2


# 행렬의 곱셈
j1<-matrix(c(1:10), ncol=2)
j1
j1*2


# 1차원 배열 구성
k1 =array(1:10, dim=10)
k1[2]


# 2차원 배열 구성
k2 = array(1:10, dim=c(2:5))
k2
k2[3][1]


# 리스트
l1 = 1:5
l2 = matrix(1:6, nrow=2, ncol=3)
l3 = list(l1, l2) # 벡터와 행렬을 리스트에 저장한다.
l3[1]
l3[2]


# 데이터 프레임
frame1 = 1:5
frame2 = c(10,20,30,40,50)
frame3 = c("m","f","m","m","f")
df = data.frame(frame1, frame2, frame3) # 데이터를 프레임에 저장한다.
df
str(df) # str() 함수로 데이터 타입과 데이터를 확인할 수가 있다.


# 데이터 프레임 사용하기
nrow(df) # 저장된 행수를 확인한다.
ncol(df) # 컬럼 수를 알려준다.
dim(df) # 행수와 컬럼수를 알려준다.