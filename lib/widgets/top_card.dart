import 'package:flutter/material.dart';

class TopCard extends StatelessWidget {
  final String title;
  final Icon icon;

  TopCard({@required this.title, this.icon});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        /*decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(120.0))),*/
        width: 100,
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [icon, Text(title)],
        ),
      ),
    );
  }
}
