import 'package:flutter/material.dart';

class LayoutExpanded extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.pink,
          height: (MediaQuery.of(context).size.height -
                  kToolbarHeight -
                  MediaQuery.of(context).padding.top) /
              2,
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
        Container(
          height: (MediaQuery.of(context).size.height -
                  MediaQuery.of(context).padding.top -
                  kToolbarHeight) /
              2,
          color: Colors.yellow,
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
  }
}
