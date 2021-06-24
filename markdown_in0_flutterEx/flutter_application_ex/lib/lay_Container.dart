import 'package:flutter/material.dart';

class LayoutContainer extends StatefulWidget {
  @override
  _LayoutContainerState createState() => _LayoutContainerState();
}

class _LayoutContainerState extends State<LayoutContainer> {
  String networkImgaePath =
      "https://www.pikpng.com/pngl/m/500-5007209_dalmatian-great-dane-png-download-great-dane-with.png";
  @override
  Widget build(BuildContext context) {
    return Column(
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
              EdgeInsets.all(50), // 자식 컨테이너가 부모 컨테이너의 패딩에 의해 사방향 모두 30씩 쫍아짐
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
  }
}
