import 'package:batox_mobile/Style/customColor.dart';
import 'package:flutter/material.dart';

class preferWidget extends StatelessWidget {
  final String linkRoutes;
  final String imageUrl;
  final String title;
  const preferWidget(
      {Key? key,
      required this.linkRoutes,
      required this.imageUrl,
      required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() {
        Navigator.pushNamed(context, linkRoutes);
      }),
      child: Container(
        color: white,
        width: 150,
        height: 160,
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Image(image: AssetImage(imageUrl)),
            SizedBox(
              height: 10,
            ),
            Text(
              title,
              style: TextStyle(
                  color: black, fontSize: 16, fontWeight: FontWeight.w700),
            ),
          ],
        ),
      ),
    );
  }
}
