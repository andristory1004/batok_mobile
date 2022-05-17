import 'package:batox_mobile/Style/customColor.dart';
import 'package:batox_mobile/Widget/customNavigation.dart';
import 'package:batox_mobile/Widget/preferWidget.dart';
import 'package:flutter/material.dart';

class prefer1 extends StatefulWidget {
  const prefer1({Key? key}) : super(key: key);

  @override
  State<prefer1> createState() => _prefer1State();
}

class _prefer1State extends State<prefer1> {
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
            Text(
              "Which do you prefer..?",
              style: TextStyle(
                  color: white, fontSize: 32, fontWeight: FontWeight.w700),
            ),
            Column(
              children: [
                Stack(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      preferWidget(
                          linkRoutes: "",
                          imageUrl: "images/img1.png",
                          title: "Before 1930"),
                      preferWidget(
                          linkRoutes: "",
                          imageUrl: "images/img2.png",
                          title: "After 1930")
                    ],
                  ),
                  Center(
                    child: Container(
                      margin: EdgeInsets.only(top: 30),
                      padding: EdgeInsets.all(15),
                      width: 88,
                      height: 88,
                      decoration: BoxDecoration(
                        color: white,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          color: red,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Center(
                          child: Text(
                            "OR",
                            style: TextStyle(
                                color: white,
                                fontSize: 24,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                    ),
                  ),
                ]),
                SizedBox(
                  height: 35,
                ),
                Container(
                  padding: EdgeInsets.only(right: 200),
                  width: 260,
                  height: 20,
                  decoration: BoxDecoration(
                      color: white, borderRadius: BorderRadius.circular(50)),
                  child: Container(
                    decoration: BoxDecoration(
                        color: red, borderRadius: BorderRadius.circular(50)),
                  ),
                ),
              ],
            ),
            customNavigation(nameRoutes: '/prefer2')
          ],
        ),
      ),
    );
  }
}
