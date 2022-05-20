import 'package:batox_mobile/Style/customColor.dart';
import 'package:flutter/material.dart';

class itemExplore extends StatelessWidget {
  const itemExplore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> listTired = [
      {
        "namaTired": "images/ban.png",
      },
      {
        "namaTired": "images/ban2.png",
      },
      {
        "namaTired": "images/ban3.png",
      },
      {
        "namaTired": "images/ban.png",
      },
      {
        "namaTired": "images/ban2.png",
      },
      {
        "namaTired": "images/ban3.png",
      },
    ];
    Widget Tired() {
      return Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Tired of Slipping & Sliding?",
                style: TextStyle(
                    color: black, fontSize: 20, fontWeight: FontWeight.w700)),
            SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  children: listTired.map((data) {
                return Container(
                    margin: EdgeInsets.all(5),
                    color: Colors.grey.shade300,
                    width: 150,
                    height: 129,
                    child: Image(image: AssetImage("${data['namaTired']}")));
              }).toList()),
            )
          ],
        ),
      );
    }

    List<Map<String, dynamic>> listToolsBox = [
      {"namaTools": "images/tool.png", "title": "Hand Tools"},
      {"namaTools": "images/tool2.png", "title": "Air Tools"},
      {"namaTools": "images/tool.png", "title": "Hand Tools"},
      {"namaTools": "images/tool2.png", "title": "Air Tools"},
      {"namaTools": "images/tool.png", "title": "Hand Tools"},
      {"namaTools": "images/tool2.png", "title": "Air Tools"},
    ];

    Widget ToolsBox() {
      return Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Expand Your Toolbox",
                style: TextStyle(
                    color: black, fontSize: 20, fontWeight: FontWeight.w700)),
            SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  children: listToolsBox.map((data) {
                return Container(
                    margin: EdgeInsets.all(5),
                    color: white,
                    width: 150,
                    child: Column(
                      children: [
                        Image(image: AssetImage("${data['namaTools']}")),
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Text("${data['title']}",
                              style: TextStyle(
                                  color: black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700)),
                        ),
                      ],
                    ));
              }).toList()),
            )
          ],
        ),
      );
    }

    List<Map<String, dynamic>> listBrand = [
      {"namaBrand": "images/brand1.png", "title": "Ford"},
      {"namaBrand": "images/brand2.png", "title": "Mercedez Benz"},
      {"namaBrand": "images/brand1.png", "title": "Ford"},
      {"namaBrand": "images/brand2.png", "title": "Mercedez Benz"},
      {"namaBrand": "images/brand1.png", "title": "Ford"},
      {"namaBrand": "images/brand2.png", "title": "Mercedez Benz"},
    ];

    Widget Brand() {
      return Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Rep your Ride",
                style: TextStyle(
                    color: black, fontSize: 20, fontWeight: FontWeight.w700)),
            SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  children: listBrand.map((data) {
                return Container(
                    margin: EdgeInsets.all(5),
                    color: white,
                    width: 150,
                    child: Column(
                      children: [
                        Image(image: AssetImage("${data['namaBrand']}")),
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Text("${data['title']}",
                              style: TextStyle(
                                  color: black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700)),
                        ),
                      ],
                    ));
              }).toList()),
            )
          ],
        ),
      );
    }

    List<Map<String, dynamic>> myList = [
      {
        "image": "images/product1.png",
        "title": "Morris minor 1000 Tahun 1955",
        // "title": "ini title"
      },
      {
        "image": "images/product2.png",
        "title": "Impala 1962 full Custom Full papers (pake chevy 1952) A/T"
        // "title": "ini title"
      }
    ];

    Widget product() {
      return Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("You might also like ...",
                style: TextStyle(
                    color: black, fontSize: 20, fontWeight: FontWeight.w700)),
            SizedBox(height: 10),
            Container(
                height: 200,
                child: GridView(
                  padding: EdgeInsets.zero,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      mainAxisExtent: 200,
                      crossAxisSpacing: 10),
                  children: myList.map(
                    (data) {
                      return Container(
                          child: Column(
                        children: [
                          Image(image: AssetImage("${data['image']}")),
                          SizedBox(
                            height: 10,
                          ),
                          Text("${data['title']}",
                              style: TextStyle(
                                  color: black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700)),
                        ],
                      ));
                    },
                  ).toList(),
                ))
          ],
        ),
      );
    }

    return Container(
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.only(right: 25, left: 25),
      child: Column(children: [
        Tired(),
        SizedBox(
          height: 20,
        ),
        ToolsBox(),
        SizedBox(
          height: 20,
        ),
        Brand(),
        SizedBox(
          height: 20,
        ),
        product(),
        SizedBox(
          height: 20,
        ),
        TextButton(
            onPressed: () {},
            child: Row(
              children: [
                Text("View All",
                    style: TextStyle(
                        color: red, fontSize: 14, fontWeight: FontWeight.w700)),
                SizedBox(
                  width: 10,
                ),
                Image(image: AssetImage("images/arrowRightRed.png"))
              ],
            ))
      ]),
    );
  }
}
