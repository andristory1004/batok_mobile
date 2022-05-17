import 'package:batox_mobile/Style/customColor.dart';
import 'package:flutter/material.dart';

class customNavigation extends StatelessWidget {
  final String nameRoutes;
  const customNavigation({Key? key, required this.nameRoutes})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Row(
              children: [
                Image(
                  image: AssetImage("images/arrowLeft.png"),
                  width: 18,
                ),
                Text(
                  " Back",
                  style: TextStyle(
                      color: white, fontSize: 24, fontWeight: FontWeight.w700),
                ),
              ],
            )),
        TextButton(
            onPressed: () {
              Navigator.pushNamed(context, nameRoutes);
            },
            child: Row(
              children: [
                Text(
                  "Skip ",
                  style: TextStyle(
                      color: white, fontSize: 24, fontWeight: FontWeight.w700),
                ),
                Image(
                  image: AssetImage("images/arrowRight.png"),
                  width: 18,
                )
              ],
            ))
      ],
    );
  }
}
