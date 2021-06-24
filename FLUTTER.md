Flutter

## 내용 목록
[플러터 관하여](#플러터-개요)  
플러터 설치  
[플러터 생명주기](#생명주기-life-cycle)  
플러터 시스템 오버뷰  
[플러터 위젯](#widget)  
플러터 위젯 사용 예제  
[핫 리로드](#hot-reload-핫리로드)  
[플러터의 단점 ?](#플러터-단점-)  
빌드 build 메서드 ?  
상태 state 메서드 ?  
[플러터와 안드로이드 스튜디오 차이점](#플러터와-안드로이드스튜디오-차이점)  
pubspec.yaml ?  
runApp() 함수  
데이터베이스 연결하기  
[다트 언어 ?](#다트-언어-)


---------------------------
### 그외 파일 이동
[플러터와 안드로이드스튜디오 코드 차이](코드비교.md)   
[레이아웃에 대해 더 자세히](Widget.md)  
[다트 언어 쓰임 방법에 대해 알아보자](DartEx.md)

<br><br>

# 플러터 개요

 2017년에 구글에서 안드로이드와 iOS 모바일 어플리케이션을 하나의 코드(단일소스)로 개발할 수 있는 UI 프레임워크를 출시하였다.  
 사용언어는 Dart이며 컴파일된 프로그램은 안드로이드와 iOS상에서 실행을 지원한다.  
 네이티브 코드로 직접 변환 및 UI를 자체 렌더엔진(Skia Engine)으로 직접 렌더링하기 때문에 성능이 뛰어나며 크로스플랫폼 솔루션으로 iOS에서 구글의
 Material테마 디자인과 Ripple 애니메이션을 볼 수 있고 Android에서는 애플의 Cupertino(쿠퍼티노)테마 패키지를 사용가능하다.  
 각 OS플랫폼의 네이티브 widget/ui 구성요소로 변환하지 않고 플러터의 그래픽 렌더 엔진인 Skia로 직접 플랫폼 캔버스에 드로잉되기 때문에 성능이 높고 플랫폼에 관계없이
 픽셀이 퍽펙트한 디자인 구현 가능.  

 - 크로스 플랫폼 개발 : 플러터로 코드를 작성하면 안드로이드와 iOS기기에 맞게 빌드를 하며 배포가 가능하다.
 - 플러터를 구글 번역기로 돌리면 설레다,펄럭이다.

 - 핫리로드 hot reload  
 애물레이터, 시뮬레이터의 변경사항을 빠르게 리로드 해줌 

 플러터의 위젯은 스크롤 내비게이션 아이콘 및 글꼴과 등 중요한 플랫폼 차이점이 모두 통합되어있어, android 와 ios. 두 os의 화면을 동일하게 UI를 송출해준다.

<br>

 ![alt 플러터 렌더링 내부 동작원리](https://www.hanbit.co.kr/data/editor/20210308154816_ghhqbxqk.png)


<br><br>

# 플러터 단락 속성
![alt 플러터](https://booiljung.github.io/technical_articles/flutter/hummingboard_building_flutter_for_the_web.assets/1_KpntaDMPfVygd3iTCUgI1A.png)

<br><br>

# 플러터와 안드로이드스튜디오 차이점

1. 생산성이 뛰어나다. (여러 플랫폼을 지원)
2. Hot Reload 지원한다. 
3. VS Code로도 개발이 가능하여 가볍다.
4. 안드로이드스튜디오는 OS가 그리는 반면, 플러터는 Skia엔진이 그린다.
5. 크래시가 발생하지 않는다. (에러가 발생하지만 해당 페이지만 벗어나기만해도 동작 가능)
6. 
   
<br><br>

## 플러터와 네이티브앱 비교

-  |플러터 |Android|iOS
------|-----|--------|----
사용 언어|다트  |자바, 코틀린 c, c++,|스위프트, 오프젝티브 C
UI 디자인 | 머터리얼, 쿠퍼티노 | 머터리얼 | 쿠퍼티노

<br><br>

## 플러터와 안드로이드 앱 비교

- |안드로이드 | 플러터
--|---------|----
앱구성 요소 | 액티비티 | 위젯
 | |서비스 | |
 | | 컨텐트 프로바이더| |
 | | 브로드캐스트 리시버 | |
 소스코드 |메인엑티비티.java|메인.dart |
 레이아웃 XML|액티비티_메인.xml |x |
 설정 XML |안드로이드 메인피스트| x|
 빌드 XML |build.gradle|pubspec.yaml|  

<br><br>

## 플러터 위젯 종류

-|레이아웃 | 스타일 | 위치와 정렬 | 구조 | 애니메이션
--|------|------|-----------|-----|---------
| | Row |TextStyle| Center|Button|FadeInPhoto|
| | Column|Color|Padding|Toast| Transform|
| |Stack| | | MenuDrawer| |

<br>

> 플러터와 안드로이드 비교 정리글  
https://www.slideshare.net/ssuser5c02ee/android-flutter-5-203481934
 
<br><br>

# 생명주기 (Life Cycle)
## StatefulWidget.createState()
- 상태를 생성
- 이 메서드를 제외하고 나머지는 모두 State클래스 내부에 존재한다.
  
1. createState()
    - 프레임워크가 Statefulwidget을 생성할 경우 createState()가 즉시 호출
2. mounted is true 
    - 모든 위젯은 this.mounted:bool 속성을 가지고있다. 즉 buildContext가 할당될때 this.mounted가 true거 되어 리턴된다.
3. initState()
    - 위젯이 만들어지고 생성자 후에 처음 메소드 실행할때 이 함수가 실행된다. 
    - super.initState()필수 호출
4. didChangeDependencies()
    - 위젯이 최초 생성되었을때 initState다음으로 바로 호출이된다.
    - 위젯이 의존하는 데이터의 객체가 호출될때마다 호출된다.
5. build()
    - 필수적으로 오버라이딩해서 구현해야하는 함수
    - 위젯을 리턴!
6. didUpdateWidget(Widget oldWidget)
    - 부모 위젯이 변경되어 이 위젯을 재구성해야하는 경우 ???
7. setState()
    - 플러터 프레임워크 자체적 또는 개발자로부터 호출.
    - 데이터가 변경되었음을 프레임워크에게 알리는데 사용하며 build context의 위젯을 다시 빌드하게 한다.
    - 비동기인 callback을 사용 ???  
8. deactvate()
    - 거의 사용되지않는다.
    - tree에서 state가 제거 될때 호출된다.
    - State객체가 tree의 한 지점에서 다른 지점으로 이동할 수 있기 때문에 기본적으로 존재
9.  dispose()
    - 상태객체가 위젯트레에서 영구 제거
    - dispos() 위젯이 호출되면 상태객체는 재사용 불가
10. mounted is false
    - 최종적으로 위젯이 화면에서 탈착!
    - 이 상태에서 state 객체는 다시 mount되지 않으며, setState()가 호출되며 에러발생..

<br>

> 플러터 생명주기 예제 소스 확인 할 수 있음!  https://chajinjoo.netlify.app/Flutter/2002/200227_statefulWidgetLifeCycle/

<br><br>

# 플러터 위젯 트리

![alt 위젯트리](https://user-images.githubusercontent.com/55340876/74588822-fa8f9980-5042-11ea-817e-43afd451c3b4.png)  

- 최상위 위치에는 MyApp이란 위젯이 존재
  - 앱의 root위젯이자 앱의 시작점.
   - 일종의 custom 위젯이다  
 
- MaterialApp 위젯은 플러터에서 지원해주는 테마속성 
  - 메인 처음화면
  - appBar, body 속성등을 가지고있음
- MyHomePage 위젯은 커스텀위젯
- Scaffold 테마속성을 가지고 
- 앱바, 바디, 

<br><br>

# Widget 
위젯은 플러터 프레임 워크 중심 클래스 계층이다.    
위젯은 기본 렌더트리 요소를 확장하여 페이지를 구현해간다.  


* Appbar : 머터리얼 디자인의 앱바
* CupertionTabBar : iOS 스타일의 bottom navigation 탭바
* ObstructingPerferredSizeWidet : 기본크가를 가지고 뒤에 있는 위젯들을 완전히 막는 위젯 
* CupertionNavigtionBar : iOS 스타일의 내비게이션바  
* TabBar : 머터리얼 디자인 탭바, 일반적으로 앱바 아래에 생성하고 TabBarView와 함께 사용한다.
* SizedBox : 사용자 크기지정가능한 박스, 주로 위젯과위젯을 사이를 벌러주고싶을때 사용
* Center : 자신의 영역에서 자식을 중앙정렬 하는 위젯

### 레이아웃  
* Stack : 자신의 영역안에서 자식들의 위치를 상대적으로 지정할 수 있는 위젯  
* Row : 자식들을 수평 방향으로 배열하는 위젯  
* Column : 자식들을 수직 방향으로 배열하는 위젯
* Container : 컨테이너 영역의 박스를 꾸밀수있음.  
  * color, margin, padding, 등등 
* Card :
*  

### 테이블
* Table
  * column
     * row

### 스크롤
* SingleChildScrollView  
  : 적용하고 싶은 영역에 싱글차이드스크롤뷰를 감싸준다.
      

<br><br>

# hot reload 핫리로드!

핫리로드로 에뮬레이터를 띄어놓으면 소스 수정 후 저장만 해도 기기에 바로 반영된다.

<br><br>

# 플러터 단점? ! 

- 가장 치명적인 단점은 강력한 네이티브API를 사용할 수 없다는것이다.  
- c/c++ 라이브러 호출이 dart에선 안된다.플러그인으로 대체를 해야하던가 직접만들어야한다.


<br><br>

# pubspec.yaml 
패키지들의 의존성 관리 및 프로젝트를 정의하는 (프로젝트 이름,버전,개발 환경 등)역할을 맡는다.

> https://pub.dev/

<br><br>

# runApp()함수 
플러터앱의 시작은 runApp으로부터 시작된다. runApp호출시 넘겨주는 위젯이 앱의 루트 위젯이 된다. 사용예는 아래와 같다.
~~~dart
void main() {
  runApp(MyApp());//MyApp위젯 빌드
}
~~~~

<br>

command + 마우스오른쪽클릭 하여 runApp()위젯의 깊은곳으로 들어가봤다. 

~~~dart
//binding.dart 에 runApp위젯 존재
void runApp(Widget app) {
  WidgetsFlutterBinding.ensureInitialized()
    ..scheduleAttachRootWidget(app)
    ..scheduleWarmUpFrame();
}
~~~

runApp()위젯은 플랫폼(안드로이드,iOS,데스크탑 등)바인딩을 초기화 하고 윈도우 생성,스케줄러 초기화,위젯트리,엘리먼트트리,렌더트리 생성해준다.

<br><br>


# 다트 언어 ?  

구글이 자바스크립트를 대체하기 위해 2011년도에 개발에 웹프로그래밍 언어이다.  
모바일 앱, 웹 앱, 명령어 스크립트, 서버 프로그래밍 등 어떤 것이든 다트를 사용해 만들 수 있다.

### 다트 언어 특징 
- Varible 안에 넣을 수 있는것은 전부 Object.Function,number,null 전부 Object로 취급된다.  
- Typed 언어지만 자유롭다.
  - 기본적으로 타입언어지만 var, dynamic으로 선언하면 동적 타입으로 사용이 가능하다.  
  - var : 타입을 지정하지 않아도 해당 변수의 초기값에 알아서 variable의 타입의 타입이 뭔지 추측함, 이후 다른 타입으로 재대입 할 수 없음 
  - Dynamic : 모든 다트객체의 기본 Object, 명시적으로 사용, 서로 다른 타입을 지정할 수 있으며 다른 타입을 재대입 할 수 있음.
- public, private, protected 의 정의가 없으며 _(언더바)로 private를 정의 할 수 있다. ex String _name ="이름";
- Warning 문제는 프로그램이 수행이 안될테지만 플러터는 수행해준다.
- 다트는 객체지향 언어이다.
  

[다트 사용법 알아보기](DartEx.md)
<br><br>


-----------------------------------
참고 문서 링크  
[*Flutter > dart:ui > Paragraph class* 클릭시 바로가기](https://api.flutter.dev/flutter/dart-ui/Paragraph-class.html)
