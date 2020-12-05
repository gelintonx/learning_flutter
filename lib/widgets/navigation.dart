import 'package:flutter/material.dart';
import 'package:food_app/providers/NavigationBloc.dart';
import 'package:provider/provider.dart';

class NavigationWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final navigationProvider = Provider.of<NavigationBloc>(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        GestureDetector(
          onTap: () {
            if (navigationProvider.isFood == true) {
              navigationProvider.setCurrentIndex(0);
              navigationProvider.isOffer = true;
              Navigator.pushNamed(context, '/');
            } else {
              navigationProvider.setCurrentIndex(0);
              Navigator.pushNamed(context, '/');
            }
          },
          child: Container(
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
              color: navigationProvider.currentIndex == 0
                  ? Colors.deepPurple[200]
                  : Colors.transparent,
              width: 3,
            ))),
            child: Text(
              "Food",
              style: TextStyle(fontSize: 40.0),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            if (navigationProvider.isOffer) {
              //navigationProvider.setCurrentIndex(0);
              navigationProvider.isOffer = false;
              Navigator.pushNamed(context, '/offers');
            } else {
              navigationProvider.isFood = false;
              navigationProvider.setCurrentIndex(1);
              Navigator.pushNamed(context, '/offers');
            }
          },
          child: Container(
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
              color: navigationProvider.currentIndex == 1
                  ? Colors.deepPurple[200]
                  : Colors.transparent,
              width: 3,
            ))),
            child: Text(
              "Offers",
              style: TextStyle(fontSize: 40.0),
            ),
          ),
        )
      ],
    );
  }
}
