import 'package:flutter/material.dart';

class LayoutCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
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
          color: Colors.green,
          margin: EdgeInsets.all(20),
          // child: ClipRRect(
          //   borderRadius: BorderRadius.circular(20),
          child: Container(
            height: 150,
            width: 300,
            child: Image.network(
              "https://t1.daumcdn.net/liveboard/koreadognews/c68ea48d466747db82d7096d8badff65.png",
              fit: BoxFit.fill,
            ),
          ),
        ),
        // )
      ],
    );
  }
}
