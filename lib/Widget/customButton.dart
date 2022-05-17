import 'package:batox_mobile/Style/customColor.dart';
import 'package:flutter/material.dart';

class customButton extends StatelessWidget {
  final String nameButton;
  final String nameRoutes;
  final double widthButton;
  const customButton(
      {Key? key,
      required this.nameButton,
      required this.widthButton,
      required this.nameRoutes})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widthButton,
      height: 65,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(primary: white),
          onPressed: () {
            Navigator.pushNamed(context, nameRoutes);
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                nameButton,
                style: TextStyle(
                    color: grey, fontSize: 20, fontWeight: FontWeight.w700),
              ),
              SizedBox(
                width: 5,
              ),
              Image(
                image: AssetImage("images/arrowGrey.png"),
                width: 18,
              )
            ],
          )),
    );
  }
}
