import 'package:batox_mobile/Style/customColor.dart';
import 'package:batox_mobile/Widget/customButton.dart';
import 'package:flutter/material.dart';

class getStarted extends StatefulWidget {
  const getStarted({Key? key}) : super(key: key);

  @override
  State<getStarted> createState() => _getStartedState();
}

class _getStartedState extends State<getStarted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: EdgeInsets.only(top: 90),
      width: double.infinity,
      height: double.infinity,
      color: black,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(
            image: AssetImage("images/Logo.png"),
            width: 170,
            height: 127,
          ),
          Container(
            margin: EdgeInsets.only(left: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "a small Things \ncan a Big Tnings",
                  style: TextStyle(
                      color: red,
                      fontFamily: 'Comforta',
                      fontSize: 36,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 28,
                ),
                customButton(
                    nameButton: "Let's get Starter",
                    widthButton: 245,
                    nameRoutes: "/preference")
              ],
            ),
          )
        ],
      ),
    ));
  }
}
