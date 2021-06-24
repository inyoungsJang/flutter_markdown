Map()사용 문법 아래 링크  
https://www.tutorialspoint.com/dart_programming/dart_programming_map.htm  
다트 관련문법 총 정리 아래 링크  
https://www.tutorialspoint.com/dart_programming/index.htm  
리스트 관련 정리글 아래링크  
https://sysocoder.com/498-2/

## 내용 목록

[변수선언 방식](#변수-선언)  
[기본 값](#기본-값)  
[final과 const](#final-과-const)  
[int와 double](#int-double-숫자형-타입)    
[String](#string-타입)   
[List](#list)  
[Map (key, value 형태)](#map-key값-value형태)   
[boolean](#boolean-true-false)  
Runes  
Symbols  
Function  
Async  

<br><br>

# 변수 선언
아래와같이 세가지 형태로 선언 할 수 있다. 
var(가변), dynamic(동적), String(명시적)  
var 형태로 선언하는경우 초기값의 타입으로 선언된다. 

~~~dart
var name_v = 'Jack'; // 'Jack'은 타입이 문자이므로 var 은 문자로 받아들인다. name_v변수는 문자열로 선언.
dynamic name_d = 'Jack';
String name_s = 'Jack'; 
~~~

<br><br>

# 기본 값
값을 할당 하지 않으면 기본적으로 null값을 가지게된다.
~~~dart
int lineCount;
assert(lineCount == null );
~~~
assert함수는 배포시 무시된다.(주석마냥..)  
개발하는동안 debug모드에서만 동작하며 함수내부값이 일치하지않으면 예외를 발생시킨다.(throws exception)

<br><br>

# final 과 const
고정적인 값을 사용할 경우에 사용한다.  
final : 초기값 한번만 설정 가능  
const : 컴파일 시점에 상수가된다.(암묵적으로 final)

~~~dart
final name = 'Jack';
final String nickname = 'Bob';

name = 'Kim'; //오류 발생, final변수는 처음선언한 값 고정
~~~

<br><br>

# int, double 숫자형 타입
- num의 sybtype이다.
- int는 정수형만 받아올수있다.
- double은 정수형, 실수형을 받아올수있다.
  

~~~dart
int a = 1;
double b = 1.1; 
double c = 1; // 1.0과도 같다

//형 변환
// int타입의 변수에 문자값 대입
int one = int.parse('1'); //문자열 one변수에 숫자형 1을 대입
assert(one == 1) ; //true ,one은 문자열형식이지만 int.parse('1')로 값을 대입했기에 숫자값1이 들어가있다.   

// String타입 변수에 int값 대입
String oneAsString = 1.toString();
assert(oneAsString == '1'); //true, oneAsString에 1을대입했는데 .toString() 메서드를 사용함으로써 문자로 대입됌

~~~
<br><br>

# String 타입
- [UTF-16](https://dingue.tistory.com/16)을 기본으로 사용
- '+'연산자를 사용하여 '문자열' + '문자열'을 연결 할 수 있음
- 따옴표, 쌍따옴표를 가지고 문자열을 생성
- 따옴표, 쌍따옴표를 세개를 사용하면 다중열을 표현 할 수 있다.

~~~dart
String st1 = '오늘 날씨 오전에 소나기';
String st2 = "오늘 날씨 오전에 소나기가";
String st3 = '오늘' + "날씨";

String st4 = ''' 
오늘 날씨 출근하는데 소나기가 
내렸었다.
'''
~~~

<br><br>

# boolean (true, false)
- 0은 거짓(false), 1은 참(true)

~~~dart
var name ="";
assert(name.isEmpty); //isEmpty메서드는 공백도 검사 

var isNull;
assert (isNull == null); // null값인지 검사

var notNum = 0/0;
assert (notNum.isNaN); // isNaN이 Not a Number인지 숫자 여부 검사
~~~

<br><br>

# Map (key값, value형태)

~~~dart
var ex = {
    //key : value
    'first': 'one',
    'second': 'two'
};

var ex2 = {
    1: 'zz',
    2: 'cc'
};

var ex3 = Map(); //위와같이 []안에는 숫자,문자 등타입의 key값이 들어가고 그에 해당하는 value값
ex3['fir']='1';
ex3['sec']='2';
...

~~~

<br><br>

# Symbol 
- 라이브러리에서 메타데이터를 반영하는데 사용되는 불투명하고 동적인 문자열이다.
- 간단히말해 기호는 사람이 읽을 수 있는 문자열과 컴퓨터에서 사용되도록 .......

<br><br>

# List
- 0부터 인덱스가 시작한다.
- dart의 list는 중복과 null을 허용한다.
- 스프레드 연산자 사용 가능
  
### 메서드 설명 
- .length : 길이(인덱스)를 확인 할 수 있다.
- .removeAt(int index) : 해당하는 인덱스의 리스트 항목을 삭제 할 수 있다.
- .removeWhere(bool test) : 주어진 조건과 일치하는 모든 항목을 제거
- .remove(value) : 리스트 항목에서 제거할 수 있다.
- .clear() : 리스트항목 삭제 가능
- .replaceRange() : 범위내의 리스트 항목을 제거한 후 다른 항목을 삽입
- .forEach() : 람다 표현식의 반복문
- .indexOf() : 해당 항목의 색인(인덱스)을 검색
- 

~~~dart
var list1=[1,2,3];
var list2=null;
var list3=[...list1,4,5]; //...list1는 스프레드 연산자라고 한다. , list3=[1,2,3,4,5]

print(list1.length); // 3
print(list1.removeAt(1)); // list1=[1,3], 0부터인덱스가 시작이니 1은 2값을 가리킨다.

list3.foEach(print) // 
~~~
<br>

~~~dart
class Customer {
    String name;
    int age;

    Customer(this.name, this.age);

     <!-- Customer(name,age){
        this.name=name;
        this.age=age;
    }  --> //위와 동일한 생성자 생성 방법

    String toString(){
        return '{${this.name}, ${this.age}}';
    }
}

main(){
    List customer=[];
    customer.add(Customer('Jack',10));
    customer.add(Customer('Mack',13));

    print(customer);
}
~~~
결과  
[{Jack,10},{Mack,13}]