import 'package:flutter/material.dart';
import 'package:food_app/component/bottom_nav_bar.dart';
import 'package:food_app/constant.dart';
import 'package:food_app/screens/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Application',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: kPrimaryColor,
          scaffoldBackgroundColor: Colors.white,
          textTheme: const TextTheme(
            bodyText1: TextStyle(color: ksecondaryColor),
            bodyText2: TextStyle(color: ksecondaryColor),
          )),
      home: BottomNavBar(),
    );
  }
}
