import 'package:flutter/material.dart';
import 'package:flutter_application_ex/lay_Card.dart';
import 'package:flutter_application_ex/lay_Center.dart';
import 'package:flutter_application_ex/lay_Column.dart';
import 'package:flutter_application_ex/lay_Column2.dart';
import 'package:flutter_application_ex/lay_Container.dart';
import 'package:flutter_application_ex/lay_Expanded.dart';
import 'package:flutter_application_ex/lay_GridView.dart';
import 'package:flutter_application_ex/lay_IntrinsicWidth.dart';
import 'package:flutter_application_ex/lay_ListView.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("마크다운 문서 레이아웃 예제"),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //LayoutContainer(), // 컨테이너 속성 등
            //LayoutCenter(),
            //LayoutColumn()
            //LayoutColumn2(),
            // LayoutCard(),
            //LayoutIntrinsicWidth(),
            //LayoutGridView(),
            //LayoutExpanded(),
            LayoutListView(),
          ],
        ),
      ),
    );
  }
}
