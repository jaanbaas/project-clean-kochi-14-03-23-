import 'dart:async';
import 'package:flutter/material.dart';
import 'home.dart';
// ignore: depend_on_referenced_packages

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => HomeScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: PreferredSize(
      //         preferredSize: Size.fromHeight(120.0),
      //         child: AppBar(
      //           leading: SizedBox(
      //             width: 200,
      //           height: 200,
      //           child: IconButton(
      //             padding: new EdgeInsets.all(0.0),
      //             icon: Image.asset('assets/images/Clean_Kochi-logo2.png', height: 700.0, width: 700.0,)
      //             ,
      //           )),
      // ),),
      body: Center(
        child: Image.asset('assets/images/logo.png'),
      ),
    );
  }
}
