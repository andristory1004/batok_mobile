import 'package:batox_mobile/Style/customColor.dart';
import 'package:batox_mobile/Widget/customBottomNavigation.dart';
import 'package:batox_mobile/Widget/customNavigation.dart';
import 'package:flutter/material.dart';

class favoriteProduct extends StatefulWidget {
  const favoriteProduct({Key? key}) : super(key: key);

  @override
  State<favoriteProduct> createState() => _favoriteProductState();
}

class _favoriteProductState extends State<favoriteProduct> {
  List<Map<String, dynamic>> listModel = [
    {
      'image': "images/mobil.png",
      'title': "Citroen CX pallas 1978",
      'jarak': "200 KM",
      'lokasi': "Jakarta Pusat",
      "harga": "Rp. 170.000.000"
    },
    {
      'image': "images/mobil2.png",
      'title': "Holden bellmont st wagon Tahun 1976",
      'jarak': "200 KM",
      'lokasi': "Jakarta Pusat",
      "harga": "Rp. 170.000.000"
    },
    {
      'image': "images/mobil3.png",
      'title': "Citroen CX pallas 1978",
      'jarak': "200 KM",
      'lokasi': "Jakarta Pusat",
      "harga": "Rp. 170.000.000"
    },
    {
      'image': "images/mobil2.png",
      'title': "Holden bellmont st wagon Tahun 1976",
      'jarak': "200 KM",
      'lokasi': "Jakarta Pusat",
      "harga": "Rp. 170.000.000"
    },
  ];

  List<Tab> myTab = [
    Tab(
      text: "Vehicle",
    ),
    Tab(
      text: "Part & Accessories",
    )
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTab.length,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: white,
            elevation: 0,
            leading: BackButton(
              color: black,
            ),
            title: Text("Favorites",
                style: TextStyle(
                    color: black, fontSize: 24, fontWeight: FontWeight.w700)),
            bottom: TabBar(
                indicatorColor: red,
                labelColor: red,
                labelStyle:
                    TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                unselectedLabelColor: black,
                unselectedLabelStyle:
                    TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                tabs: myTab),
          ),
          body: TabBarView(
            children: [
              Container(
                  width: double.infinity,
                  height: double.infinity,
                  child: ListView(
                      padding: EdgeInsets.zero,
                      children: listModel.map((data) {
                        return Container(
                            padding: EdgeInsets.only(bottom: 28),
                            color: white,
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(
                                  children: [
                                    Container(
                                      width: double.infinity,
                                      height: 217,
                                      color: Colors.grey.shade200,
                                      child: Image(
                                          image:
                                              AssetImage("${data['image']}")),
                                    ),
                                    Align(
                                      alignment: Alignment.topRight,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: white,
                                            borderRadius:
                                                BorderRadius.circular(50)),
                                        margin:
                                            EdgeInsets.only(right: 10, top: 10),
                                        padding: EdgeInsets.all(3),
                                        width: 35,
                                        height: 35,
                                        child: Image(
                                          image: AssetImage(
                                              "images/iconLikeRed.png"),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Container(
                                  padding: EdgeInsets.all(32),
                                  width: double.infinity,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("${data['title']}",
                                          style: TextStyle(
                                              color: black,
                                              fontSize: 20,
                                              fontWeight: FontWeight.w700)),
                                      SizedBox(
                                        height: 11,
                                      ),
                                      Text("${data['jarak']}",
                                          style: TextStyle(
                                              color: grey,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400)),
                                      SizedBox(
                                        height: 16,
                                      ),
                                      Container(
                                          child: Row(
                                        children: [
                                          InkWell(
                                              onTap: () {},
                                              child: Image(
                                                image: AssetImage(
                                                    "images/iconMap.png"),
                                                width: 16,
                                                height: 16,
                                              )),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text("${data['lokasi']}",
                                              style: TextStyle(
                                                  color: black,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w700)),
                                        ],
                                      )),
                                      SizedBox(
                                        height: 28,
                                      ),
                                      Text("BUY IT NOW",
                                          style: TextStyle(
                                              color: grey,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w700)),
                                      SizedBox(
                                        height: 6,
                                      ),
                                      Row(
                                        children: [
                                          Text("${data['harga']}",
                                              style: TextStyle(
                                                  color: black,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w700)),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text("or best offer",
                                              style: TextStyle(
                                                  color: grey,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w700)),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 14,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ));
                      }).toList())),
              Container(
                child: Center(child: Text("Part & Accessories")),
              )
            ],
          )),
    );
  }
}
