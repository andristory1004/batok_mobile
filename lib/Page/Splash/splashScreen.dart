import 'dart:async';
import 'dart:math';

import 'package:batox_mobile/Page/Splash/getStarted.dart';
import 'package:flutter/material.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({Key? key}) : super(key: key);

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  void initState() {
    splashScreen();
    super.initState();
  }

  splashScreen() async {
    var Timing = Duration(seconds: 3);
    return Timer(Timing, () {
      Navigator.push(context,
          MaterialPageRoute(builder: (BuildContext context) => getStarted()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/ss_splashScreen.png"),
              fit: BoxFit.cover),
        ),
      ),
    );
  }
}
