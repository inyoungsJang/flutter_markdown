플러터 layout 문서 링크  
https://flutter.dev/docs/development/ui/layout  
https://medium.com/flutter-community/flutter-layout-cheat-sheet-5363348d037e  https://darrengwon.tistory.com/370  
card 아래에 링크 
https://api.flutter.dev/flutter/material/Card/clipBehavior.html  
gridView  아래에 링크  
https://paulaner80.tistory.com/entry/gridView    
Expanded 아래에 링크  
https://api.flutter.dev/flutter/widgets/Expanded-class.html

## 내용 목록 
[Column, Row](#column-row)  
[Container](#container)  
[Center](#center)  
위젯의 타입 Stateless(정적), Statefull(동적)  
[GridView](#gridview)  
[ListView](#listview)  
Stack  
Flex   
[Card](#card)  
[Expanded](#expanded)  
Align  
SizedBox  
SafeAre  
Material  
ConstraineBox  
[IntrinsicWidth & IntrinsicHeight](#intrinsicwidth--intrinsicheight)  
PageView  



<br><br>

# Column, Row 
### 위젯 설명
* Column위젯은 수평으로
* Row위젯은 수직으로
* 컬럼위젯, 로우위젯은을 사용하면 자식들(다수의 위젯)을 삽입할 수 있다.
  
  <br>
### 위젯 예시  
~~~dart
Column(
      children: [
        Container(
          height: 100,
          color: Colors.amber,
        ),
        Container(
          height: 100,
          color: Colors.amber[100],
        ),
        Container(
          height: 100,
          color: Colors.amber[900],
        ),
        Row(
          children: [
            Container(
              width: MediaQuery.of(context).size.width / 2,
              height: 100,
              color: Colors.black,
            ),
            Container(
              width: MediaQuery.of(context).size.width / 2,
              height: 100,
              color: Colors.green,
            )
          ],
        )
      ],
    );
~~~

<br>

 ### 결과 화면
 - lay_Column2.dart  
![column,row 합작](images/iPhone%2012%20Pro%20Max%202021-04-29%2017-55-49.png)


<br><br>

# Container

### 위젯 설명
- color속성, padding속성 등 다양한 속성이 존재한다. (아래 속성 설명 참조)
- height와 width를 지정해주지 않으면 최대크기로 확장한다.
- 무조건 하나의 자식만 가질 수 있음
- 하나의 자식의 겉치레를 꾸미는 용도라고만 생각하면됌


### 관련 속성 설명
- alignment : 정렬
- padding : 안쪽으로의 여백
- color : 색상을 적용, 단 decoration속성을 지금의 color속성을 사용 못하고 decoration속성에서 적용 시켜 줘야 함
- decoration : boder, color, image 등 영역을 꾸밀 수 있음 (더 자세한건 클릭)
- foregroundDecoration :
- width : 넓이
- height : 높이
- constraints : 
- margin : 바깥쪽으로의 여백
- transform : 위치
- transformAlignment : 위치
- child : 자식위젯으로 하나만 넣을 수 있음
- clipBehavior == Clip.none, ...?

<br>

### 위젯 예시
~~~dart
String networkImgaePath =
      "https://www.pikpng.com/pngl/m/500-5007209_dalmatian-great-dane-png-download-great-dane-with.png";

Column(
      children: [
        Container(
          width: 300,
          height: 300,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 2),
              borderRadius: BorderRadius.circular(30),
              image: DecorationImage(
                image: NetworkImage(networkImgaePath),
              ),
              boxShadow: [
                BoxShadow(color: Colors.black, offset: Offset(5, 5)),
              ]),
        ),
        Container(
          margin: EdgeInsets.all(30),
          padding:
              EdgeInsets.all(50), // 자식 컨테이너가 부모 컨테이너의 패딩에 의해 네방향 모두 30씩 쫍아짐
          width: 300,
          height: 300,
          color: Colors.amber,
          child: Container(
            height: 300,
            width: 300,
            color: Colors.blue,
          ),
        )
      ],
    );
)
~~~

### 결과 화면
- lay_Container.dart
![컨테이너 레이아웃에대한 예제](images/iPhone%2012%20Pro%20Max%202021-04-29%2017-09-24.png)


<br><br>


# 위젯의 타입
### Stateless


<br><br>

### Statefull


<br><br>

# Center
### 위젯 설명
- 자식위젯을 감싸서 가운데에 위치시키기 위해 사용된다.
- Factor속성으로 자식위젯의 사이즈를 결정지을 수 있다.
- 만약 null이면 최대 크기로 확장된다.

### 관련 속성 설명
- heightFactor : 자식위젯의 사이즈 * (곱)으로 부모위젯 사이즈 적용
- widthFactor : 자식위젯의 사이즈 * (곱)으로 부모위젯 사이즈 적용
- child : 하위 위젯으로 하나 적용 가능

<br>

### 위젯 예시
~~~dart
Container(
      color: Colors.blue,
      child: Center(
        heightFactor: 3, //자식위젯 크기의 * 3 = 150 
        widthFactor: 3, //이하동문
        child: Container(
          width: 50,
          height: 50,
          color: Colors.black,
        ),
      ),
    );
~~~

  
### 결과 화면
- lay_Center.dart  
![center 레이아웃 예제](images/iPhone%2012%20Pro%20Max%202021-04-29%2017-11-04.png)  

# Card
- 곡선테두리와 그림자효과가 적용되어있는 카드 형태의 레이아웃 
- 주로 자식위젯을 Column을 주고 다양하게 내부에 내용을 채운다.  


### 속성 소개
- color : 색상
- shadowColor : 그림자 색상
- elevation : 그림자 번지기
- sahpe : 테두리 모양에 관련된 속성
- borderOnForeground : bool값, 자식 앞에 모양 테두리가 칠할지 여부, 기본값은 true이며 flase이면 테두리가 자식뒤에 그려진다.
- margin : 바깥쪽 여백 
- clipBehavior : 
- semanticContainer : 
- child : 하나의 자식 위젯

### 사용 예제

~~~dart
Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Card(
            margin: EdgeInsets.all(20),
            color: Colors.yellow,
            elevation: 10,
            shadowColor: Colors.red,
            child: SizedBox(
              height: 150,
              width: 300,
            )),
        Card(
            margin: EdgeInsets.all(20),
            color: Colors.blue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: SizedBox(
              height: 150,
              width: 300,
            )),
        Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          margin: EdgeInsets.all(20),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              height: 150,
              width: 300,
              child: Image.network(
                "https://t1.daumcdn.net/liveboard/koreadognews/c68ea48d466747db82d7096d8badff65.png",
                fit: BoxFit.fill,
              ),
            ),
          ),
        )
      ],
    );
~~~ 

### 실행 화면
- lay_Card.dart  
  ![](images/iPhone%2012%20Pro%20Max%202021-04-30%2012-40-50.png)

  카드안에 자식위젯으로 이미지를 넣었을때 이미지가 Card위젯의 테두리까지 크기를 차지하기 때문에 ClipRRect위젯을 이미지가 들어간 위젯을 감싸주어 부모 boder값과 동일하게 값을 넣어 적용시켜 잘라주어야, 부모(Card)위젯의 boder가 동일하게 적용이된다.

  만약 ClipRRect위젯을 감싸주지않으면 아래와같이 Card위젯의 라운드가 이미지에 덮혀졌다는걸 알 수 있다.  
  ![clipRRect위젯을 사용하지않았을때의 예제](images/iPhone%2012%20Pro%20Max%202021-04-30%2012-48-22.png)  

<br><br>

# ListView
- 리스트뷰는 말그대로 데이타를 리스트형식으로 보여주는거다.
- ViewGroup중에 한종류로 단순히 텍스트(Text)일 수도 있고, 이미지(Image),버튼(Button), 뷰(View)의 다양한 조합으로 구성할 수 있다.
- BoxScrollView에 상속되어있어 데이터의 수가 많아 지정범위를 넘었을때 자동 스크롤이 생긴다.
- 생성자 종류로는 builder, separated, custom이 존재하다.
- .builder 같은경우는 수많은 데이터를 나태내고자 할 때 주로 사용된다.

### 속성 설명
- itemCount : 개수만큼의 크기로 뷰의 사이즈로 적용
- itemBuilder :
- scrollDirection : 스크롤 방향
- reverse :
- controller : 
- itemExtent :
- addAutomaticKeepAlives : 
- addRepaintBoundaries : 
- addSemanticIndexes :


### 사용 예제
~~~dart
 List<String> items= ['item1','item2','item3','item4'];

Container(
      child: ListView.builder(
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int i) {
          return ListTile(
            title: Text(items[i]),
          );
        },
        itemCount: items.length,
      ),
    );
~~~

### 결과 화면
- lay_ListView.dart
  ![](images/iPhone%2012%20Pro%20Max%202021-05-03%2012-42-02.png)


shrinkWrap : true 를 해줌으로써 Vertical viewport was given unbounded height 오류를 예방.  
그리고 이미 리스트뷰는 스크롤뷰를 상속받아있어 리스크뷰안에 별도로 스크롤 가능한 위젯을 넣은경우 오류가 발생함으로 physics : NeverScrollableScrollPhysics() 속성을 넣어주면 리스트뷰의 스크롤이 사용안되어 별도로 넣은 스크롤위젯의 스크롤이 정상 작동한다.


<br><br>
  # GridView
  - ListView 와 유사히지만 타일형식으로 되어있다.
  - gridDelegate 속성에 SliverGridDelegateWithFixedCrossAxisCount() 와 SliverGridDelegateWithMaxCrossAxisExtent()이 있다.  
  - gridDelegate 가 그리드 형태를 잡아준다
  - 생성자로는 GridView.builder, GridView.count, GridView.custom, GridView.extent 가 있다.
  - 자동스크롤이 된다.



  ### 속성 설명
  - SliverGridDelegateWithFixedCrossAxisCount() : 컬럼,로우에 들어가는 그리드아이템 갯수를 지정  
  - SliverGridDelegateWithMaxCrossAxisExtent() : 그리드아이템 최대넓이 값으로 컬럼,로우에 박스개수 지정 
  - crossAxisCount : 행의 개수
  - crossAxisSpacing : 행의 여백
  - mainAxisSpacing : 열의 여백

### 사용 예제
~~~dart
GridView(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      shrinkWrap: true,
      children: [
        Container(
          color: Colors.yellow,
          child: Text("item 1"),
        ),
        Container(
          color: Colors.yellow,
          child: Text("item 2"),
        ),
        Container(
          color: Colors.yellow,
          child: Text("item 3"),
        ),
        Container(
          color: Colors.yellow,
          child: Text("item 4"),
        ),
        Container(
          color: Colors.yellow,
          child: Text("item 5"),
        ),
        Container(
          color: Colors.yellow,
          child: Text("item 6"),
        ),
        Container(
          color: Colors.yellow,
          child: Text("item 7"),
        ),
        Container(
          color: Colors.yellow,
          child: Text("item 8"),
        ),
      ],
    );
~~~

### 실행 화면
- lay_GridView.dart
![그리드뷰](images/iPhone%2012%20Pro%20Max%202021-04-30%2016-52-16.png)

Expanded()로 main.dart에 사용된 LayoutGridView()를 감싸줘야 hasSize에러가 발생안한다. 또는 GridView위젯에 <span style="color:red">shrinkWrap: true </span>를 입력해줘도 된다.

  <br><br>

  # IntrinsicWidth & IntrinsicHeight 
  - IntrinsicWidth 위젯은 자식위젯들 중에 가장 큰 길이(width)의 값을 가진 위젯의 길이에 맞게 자식위젯들의 길이도 동일하게 적용된다. Column위젯에 쓰인다
  - IntrinsicHeight 위젯은 자식위젯들 중에 가장 큰 높이(height)의 값을 가진 위젯의 높이에 맞게 자식위젯들의 높이도 동일하게 적용된다. Row위젯에 쓰인다.

  ### 속성 소개


  ### 사용 예제

~~~dart
Column(
      children: [
        IntrinsicWidth( 
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                color: Colors.yellow,
                height: 50,
                width: 100,
              ),
              Container(
                color: Colors.blue,
                height: 50,
                width: 200,
              ),
              Container(
                color: Colors.purple,
                height: 50,
                width: 300,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 100,
        ),
        IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: Colors.yellow,
                height: 100,
                width: 50,
              ),
              Container(
                color: Colors.blue,
                height: 200,
                width: 50,
              ),
              Container(
                color: Colors.purple,
                height: 300,
                width: 50,
              ),
            ],
          ),
        )
      ],
    );
  ~~~

  ### 실행 화면 
  - lay_IntrinsicWidth.dart

<br>

  - 위젯 적용 전   
  ![](images/iPhone%2012%20Pro%20Max%202021-04-30%2013-53-59.png)
  ------------------------------------  
  - 위젯 적용 후  
  ![](images/iPhone%2012%20Pro%20Max%202021-04-30%2013-57-16.png)

위 예제에서 적용 된 변경점은 IntrinsicWidth 추가된거 말고도 다른 속성이 추가되었는데 Column위젯의 crossAxisAlignment: CrossAxisAlignment.stretch 이다. 부모위젯 최대 크기로 늘리는 속성으로 추가한 이유는 컨테이너들은 본인의 사이즈에 맞게 크기가 딱 정해져있기에  ????? 잘모르겟다 일단 보류;; 사이즈를 (속성사이즈(실사이즈))
에서 실사이즈중에 가장 큰 사이즈로 

<br><br>

# Expanded 
- Row, Column, Flex의 자식위젯을 확장시켜 자식위젯이 사용 가능한 공간을 채울 수 있도록 하는 위젯이다.
- Row, Column또는 Flex의 하위 항목이 확장되어 주 축을 따라 사용가능한 공간을 채운다. (행(Row)의 경우 가로, 열(Col)의 경우 세로)
- Flex 는 Row,Column위젯의 조상위젯이다. direction속성값에 따라 Row또는 Column의 특성을 가진다.

### 속성 설명
- flex : 남는비율 입력값에 비례하여 차지
  
### 사용 예제
~~~dart
Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height / 2.5,
          child: Column(
            children: [
              Container(
                height: 100,
                width: 300,
                color: Colors.red,
              ),
              Container(
                height: 100,
                width: 300,
                color: Colors.amber,
              ),
              Expanded(
                child: Container(
                  height: 100,
                  width: 300,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 100,
        ),
        Container(
          child: Row(
            children: [
              Container(
                height: 300,
                width: 100,
                color: Colors.red,
              ),
              Container(
                height: 300,
                width: 100,
                color: Colors.amber,
              ),
              Expanded(
                child: Container(
                  height: 300,
                  width: 100,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
      ],
    );
~~~

### 실행 결과
- lay_Expanded.dart

<br>

- 적용 전
![](images/iPhone%2012%20Pro%20Max%202021-04-30%2017-38-03.png)

-------------------
- 적용 후
![](images/iPhone%2012%20Pro%20Max%202021-04-30%2017-58-14.png)

Column 위젯의 자식위젯과 Row 위젯의 자식위젯들이 확장된걸 확인 할 수 있다.

<br><br>

# SizedBox
- 이름 그대로 사이즈를 설정하는데 편리하다.
- 크기를 정하지 않으면 자식위젯의 크기로 맞춰지고 자식위젯이 없다면 크기는 0으로 정해진다.
- 