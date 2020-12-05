import 'package:food_app/widgets/food_card.dart';
import 'package:food_app/widgets/navigation.dart';
import 'package:food_app/widgets/top_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool food;
  bool offers;

  @override
  void initState() {
    super.initState();
    setState(() {
      food = true;
      offers = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(padding: EdgeInsets.only(bottom: 150)),
            NavigationWidget(),
            Container(
                padding: EdgeInsets.only(top: 30),
                width: 300,
                child: CupertinoTextField(
                  placeholder: " 🔎 Search",
                  padding: EdgeInsets.all(10.0),
                )),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TopCard(
                  title: "All",
                  icon: Icon(Icons.local_pizza),
                ),
                TopCard(
                    title: "Fast Food", icon: Icon(Icons.fastfood_outlined)),
                TopCard(
                  title: "Drink",
                  icon: Icon(Icons.local_drink),
                ),
              ],
            ),
            FoodCard(
                title: "Pizza", price: 25.50, imagePath: 'assets/pizza.jpg'),
            FoodCard(
                title: "Chocolate Cake",
                price: 12.99,
                imagePath: 'assets/chocolate_cake.jpg')
          ],
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
              boxShadow: [BoxShadow(color: Colors.black)],
              borderRadius: BorderRadius.all(Radius.circular(30))),
          child: BottomNavigationBar(
            backgroundColor: Colors.black,
            items: [
              BottomNavigationBarItem(
                  label: "",
                  icon: Icon(
                    Icons.home,
                    color: Colors.white,
                  )),
              BottomNavigationBarItem(
                  label: "",
                  icon: Icon(
                    CupertinoIcons.shopping_cart,
                    color: Colors.white,
                  ))
            ],
          ),
        ));
  }
}
