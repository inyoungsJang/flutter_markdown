import 'package:flutter/material.dart';

class LayoutIntrinsicWidth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: IntrinsicWidth(
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
  }
}
