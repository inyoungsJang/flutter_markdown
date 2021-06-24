import 'package:flutter/material.dart';

class LayoutColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(width: 1)),
              color: Color(0xffFFDC3C),
            ),
            height: 90,
          ),
          Container(
            height: 90,
            color: Color(0xffFFE146),
          ),
          Container(
            height: 90,
            color: Color(0xffFFE650),
          ),
          Container(
            height: 90,
            color: Color(0xffFFEB5A),
          ),
          Container(
            height: 90,
            color: Color(0xffFFF064),
          ),
          Container(
            height: 90,
            color: Color(0xffFFF56E),
          ),
          Container(
            height: 90,
            color: Color(0xffFFFA78),
          ),
          Container(
            height: 90,
            color: Color(0xffFFFA82),
          ),
          Container(
            height: 100,
            color: Color(0xffFFFF8C),
          ),
          Container(
            height: 100,
            color: Color(0xffFFFF96),
          ),
        ],
      ),
    );
  }
}
