import 'package:flutter/material.dart';

class formatImageProduct extends StatelessWidget {
  final String imageUrl;
  const formatImageProduct({Key? key, required this.imageUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 217,
          color: Colors.grey.shade200,
          child: Image(image: AssetImage(imageUrl)),
        ),
      ],
    );
  }
}
