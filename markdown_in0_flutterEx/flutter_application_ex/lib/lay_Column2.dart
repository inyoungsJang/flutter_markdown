import 'package:flutter/material.dart';

class LayoutColumn2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
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
  }
}
