import 'package:batox_mobile/Page/Vehicle/Detail/detailProduct.dart';
import 'package:batox_mobile/Page/Vehicle/Detail/itemDetail.dart';
import 'package:batox_mobile/Widget/customBottomNavigation.dart';
import 'package:flutter/material.dart';

class mainPage extends StatefulWidget {
  const mainPage({Key? key}) : super(key: key);

  @override
  State<mainPage> createState() => _mainPageState();
}

class _mainPageState extends State<mainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Colors.grey.shade300,
          child: ListView(
            children: [itemDetail()],
          )),
      bottomNavigationBar: customBottomNavigation(),
    );
  }
}
