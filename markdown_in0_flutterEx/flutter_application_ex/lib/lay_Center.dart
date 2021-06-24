import 'package:flutter/material.dart';

class LayoutCenter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Center(
        heightFactor: 3,
        widthFactor: 3,
        child: Container(
          width: 50,
          height: 50,
          color: Colors.black,
        ),
      ),
    );
  }
}
