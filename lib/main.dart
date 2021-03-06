import 'package:food_app/providers/NavigationBloc.dart';
import 'package:food_app/screens/home_page.dart';
import 'package:food_app/screens/offers_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListenableProvider(
      create: (_) => new NavigationBloc(),
      child: MaterialApp(
        title: 'delivery_app',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.white,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        initialRoute: '/',
        routes: <String, WidgetBuilder>{
          '/': (BuildContext context) => HomePage(),
          '/offers': (BuildContext context) => OffersPage(),
        },
      ),
    );
  }
}
