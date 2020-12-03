import 'package:flutter/material.dart';

class OffersCard extends StatelessWidget {
  final String discountName;
  final int discount;

  OffersCard({@required this.discountName, this.discount});

  @override
  Widget build(BuildContext context) {
    final snackbar = SnackBar(content: Text("Copied"));

    return Container(
      margin: EdgeInsets.only(left: 50, top: 30, right: 50),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
          boxShadow: [
            BoxShadow(
                color: Colors.deepPurple[50], spreadRadius: 3, blurRadius: 7)
          ]),
      child: ListTile(
        title: Text(discountName),
        subtitle: Text("Amazing discounts of $discount % in this product"),
        onTap: () {
          Scaffold.of(context).showSnackBar(snackbar);
        },
      ),
    );
  }
}
