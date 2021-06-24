### 플러터 SQLite

1. 의존성 추가하기
2. 객체 데이터 모델 정의하기
3. 데이터베이스 열기
4. 테이블 생성
5. 데이터베이스에 객체 추가하기
6. 객체 리스트 조회하기
7. 데이터베이스에 있는 객체 수정하기
8. 데이터베이스에서 객체 삭제하기

sqlite란 디바이스에 내장된 가볍게 사용할 수 있는 데이터베이스 라이브러리이다.  
<!-- NoSQL(not only sql)
 특징 응답속도나 처리효율이 뛰어난 성능을 보인다.
다른 내장된 데이터베이스 라이브러리로 RDBMS -->
<br><br>

# 의존성 추가

sqLite데이터베이스를 사용하기 위해 sqflite와 path 패키지를 추가한다.  
- sqflite 패키지는 sqlite 데이터베이스를 사용할 수 있도록 여러 클래스와 함수를 제공해준다.
- path 패키지는 디스크에 저장할 데이터베이스의 위치를 정확히 정의 할 수있는 함수를 제공해준다.

pubspec.yaml파일에 추가
~~~dart
dependencies:
  flutter:
    sdk: flutter
  sqflite:
  path:
~~~

<br><br>

# 객체 데이터 모델 정의하기
객체에 대한 정보를 저장할 테이블을 생성하기전에 구조먼저 정의를해준다. 저자는 pen 클래스를 정의할거다. 아래와같이 colors, price 을 정의해줌.

~~~
class Pen {
    final String colors;
    final int price;
}
~~~


https://dalgonakit.tistory.com/116
https://pub.dev/packages/sqflite