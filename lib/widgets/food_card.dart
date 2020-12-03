import 'package:flutter/material.dart';

class FoodCard extends StatelessWidget {
  final double price;
  final String title;
  final String imagePath;

  FoodCard({@required this.title, this.price, this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      margin: EdgeInsets.only(left: 50, top: 30, right: 50),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
          boxShadow: [
            BoxShadow(
                color: Colors.deepPurple[50], spreadRadius: 3, blurRadius: 7)
          ]),
      child: ListTile(
        title: Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text("$price €"),
        trailing: imagePath != '' ? Image.asset("$imagePath") : Text("xD"),
      ),
    );
  }
}
