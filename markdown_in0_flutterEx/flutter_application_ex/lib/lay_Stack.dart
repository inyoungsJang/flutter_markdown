import 'package:flutter/material.dart';

class LayoutStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: [
          Image.network(
              "http://imgc.1300k.com/aaaaaib/goods/215024/58/215024585299.jpg?3"),
          Positioned(
            bottom: 200,
            left: 40,
            child: Image.asset(
              "assets/images/animal01.png",
              width: 300,
            ),
          ),
          Positioned(
            bottom: 400,
            left: 100,
            child: Container(
              color: Colors.yellow,
              width: 50,
              height: 50,
            ),
          ),
          Positioned(
            right: 100,
            top: 200,
            child: Text(
              "Animal ",
              style: TextStyle(fontSize: 60),
            ),
          ),
        ],
      ),
    );
  }
}
