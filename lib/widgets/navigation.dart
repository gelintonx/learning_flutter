import 'package:flutter/material.dart';

class NavigationWidget extends StatefulWidget {
  bool food;
  bool offers;

  NavigationWidget({@required this.food, this.offers});

  @override
  _NavigationWidgetState createState() => _NavigationWidgetState();
}

class _NavigationWidgetState extends State<NavigationWidget> {
  void _handleNavigation(route) {
    Navigator.pushNamed(context, route);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              widget.food = true;
              widget.offers = false;
              _handleNavigation('/');
            });
          },
          child: Container(
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
              color: widget.food ? Colors.deepPurple[200] : Colors.transparent,
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
            setState(() {
              widget.offers = true;
              widget.food = false;
              _handleNavigation('/offers');
            });
          },
          child: Container(
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
              color:
                  widget.offers ? Colors.deepPurple[200] : Colors.transparent,
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
