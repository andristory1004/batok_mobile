import 'package:batox_mobile/Style/customColor.dart';
import 'package:batox_mobile/Widget/customButton.dart';
import 'package:flutter/material.dart';

class preference extends StatelessWidget {
  const preference({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(30),
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            color: black,
            image: DecorationImage(
                image: AssetImage("images/pf_bg.png"),
                fit: BoxFit.cover,
                opacity: 70)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "What would you like \nto see first",
              style: TextStyle(
                  color: white, fontSize: 36, fontWeight: FontWeight.w700),
            ),
            customButton(
                nameButton: "Part & Accessories",
                widthButton: 230,
                nameRoutes: "/partPage"),
            customButton(
                nameButton: "Vehicles",
                widthButton: 140,
                nameRoutes: "/vehiclesPage")
          ],
        ),
      ),
    );
  }
}
