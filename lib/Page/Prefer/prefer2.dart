import 'package:batox_mobile/Style/customColor.dart';
import 'package:flutter/material.dart';

class prefer2 extends StatefulWidget {
  prefer2({Key? key}) : super(key: key);

  @override
  State<prefer2> createState() => _prefer2State();
}

class _prefer2State extends State<prefer2> {
  List<Map<String, dynamic>> myList = [
    {
      'nameRoutes': '',
      'imageUrl': 'images/prefer1.png',
      'title': 'Before 1930'
    },
    {'nameRoutes': '', 'imageUrl': 'images/prefer2.png', 'title': 'After 1930'},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Expanded(
              child: GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, crossAxisSpacing: 20),
            children: myList.map((data) {
              return GestureDetector(
                onTap: (() {
                  Navigator.pushNamed(context, "${data['nameRoutes']}");
                }),
                child: Card(
                    child: Column(
                  children: [
                    Image(image: AssetImage("${data['imageUrl']}")),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "${data['tilte']}",
                      style: TextStyle(
                          color: black,
                          fontSize: 16,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                )),
              );
            }).toList(),
          ))
        ],
      ),
    );
  }
}
