import 'package:food_app/widgets/navigation.dart';
import 'package:food_app/widgets/offers.card.dart';
import 'package:flutter/material.dart';

class OffersPage extends StatefulWidget {
  @override
  _OffersPageState createState() => _OffersPageState();
}

class _OffersPageState extends State<OffersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(padding: EdgeInsets.only(bottom: 150)),
          NavigationWidget(),
          OffersCard(
            discountName: "Hot Dogs",
            discount: 7,
          ),
          OffersCard(
            discountName: "Pizza",
            discount: 10,
          ),
          OffersCard(
            discountName: "Kebap",
            discount: 5,
          )
        ],
      ),
    );
  }
}
