import 'package:flutter/material.dart';
import 'package:shopping_cart/splashscreen/splashscreen.dart';



void main(){
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white
      ),
      home: SplashPage(),
    );
  }
}