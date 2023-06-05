import 'dart:async';
import 'package:flutter/material.dart';

import '../dashboard/dashboard_main.dart';




void main() => runApp(const MaterialApp(debugShowCheckedModeBanner: false,home:SplashPage()));


class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  void initState() {
    // TODO: implement initState
    super.initState();
    startSplashScreenTimer(); // calling startSplashScreenTimer method,to start the timer
  }

  startSplashScreenTimer() async { // Because we using Timer and it is a Future Object, we used async keyword
    var duration = const Duration(seconds: 6);
    return Timer(duration, navigationToNextPage);

  }

  void navigationToNextPage() async {
    Navigator.pushAndRemoveUntil(
      context, MaterialPageRoute(builder: (context) => DashboardMain()),
          (Route<dynamic> route) => false,//
    );
  }

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Image(
            image:
            NetworkImage('https://i.pinimg.com/originals/66/22/ab/6622ab37c6db6ac166dfec760a2f2939.gif'),
            height: 120,
          )
      ),
    );
  }
}