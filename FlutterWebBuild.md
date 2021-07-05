## Flutter Web Build 
https://www.notion.so/5a284462821a4d829ec8354130ef32e5#3f1f4386a0254d2db55f2985d0d06eb2  

<br><br>

# 1. 플러터 웹 빌드 파일 생성하기.
##  플러터 프로젝트 생성
-

<br><br>

##  해당 프로젝트에 새로운 터미널 열기
- 프로젝트가 위치한 

<br><br>

## flutter run -d chrome 
- 웹 디버깅을 하여 원하는 웹화면인지 확인
- (생략가능)  

<br><br>

## flutter build web 
- web 빌드 파일 생성
- build/web 위치에 index.html.assets폴더 등 생성된거 확인 

<br><br><br><br>

# 2. github.io 배포하기 

## 깃허브 계정.github.io 로 새로운 레지스토리 생성
- ex inyoungsJang.github.io
- pubilc으로 생성
  
<br><br>

## 터미널을 열어 깃허브 연동하기
- 클론하여 
- remote 새로생성하여 받기 등등 

<br><br>

## web폴더의 하위파일들을 넣기
- /build/web/ <모든 파일>

<br><br>

## 깃에 소스데이터 보내기 
- git add .
- git commit -m 'web build'
- git push origin
  
<br><br>

## 생성한 github.io 주소에 접속 가능 
- 서버가 띄어지는데 시간이 다소 소요될수 있음