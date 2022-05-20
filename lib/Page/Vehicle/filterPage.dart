import 'package:batox_mobile/Style/customColor.dart';
import 'package:flutter/material.dart';

class filterPage extends StatefulWidget {
  const filterPage({Key? key}) : super(key: key);

  @override
  State<filterPage> createState() => _filterPageState();
}

class _filterPageState extends State<filterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: white,
          elevation: 0,
          title: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CloseButton(
                      color: black,
                    ),
                    Text("Filters",
                        style: TextStyle(
                            color: black,
                            fontSize: 24,
                            fontWeight: FontWeight.w700)),
                  ],
                ),
                Text("Clear",
                    style: TextStyle(
                        color: black,
                        fontSize: 14,
                        fontWeight: FontWeight.w700)),
              ],
            )
          ])),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: ListView(
          children: [],
        ),
      ),
    );
  }
}
