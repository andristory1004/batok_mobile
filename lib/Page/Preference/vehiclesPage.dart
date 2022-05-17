import 'package:batox_mobile/Style/customColor.dart';
import 'package:batox_mobile/Widget/customButton.dart';
import 'package:batox_mobile/Widget/customNavigation.dart';
import 'package:flutter/material.dart';

class vehiclesPage extends StatelessWidget {
  const vehiclesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 100, bottom: 10, right: 20, left: 20),
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/vehicles_bg.png"),
                fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Great!",
                  style: TextStyle(
                      color: white, fontSize: 36, fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  "Help us tune your feed so we don’t show you a wall of Prius...",
                  style: TextStyle(
                      color: white, fontSize: 36, fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 100,
                ),
                customButton(
                    nameButton: "Add Ovehicle",
                    widthButton: 180,
                    nameRoutes: '/prefer1')
              ],
            ),
            customNavigation(nameRoutes: "")
          ],
        ),
      ),
    );
  }
}
