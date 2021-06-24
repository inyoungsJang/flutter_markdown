import 'package:flutter/material.dart';

class LayoutListView extends StatelessWidget {
  List<String> items = ['item1', 'item2', 'item3', 'item4'];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int i) {
          return ListTile(
            title: Text(items[i]),
          );
        },
        itemCount: items.length,
      ),
    );
  }
}
