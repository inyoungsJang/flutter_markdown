import 'package:flutter/material.dart';

class LayoutGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
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
  }
}
