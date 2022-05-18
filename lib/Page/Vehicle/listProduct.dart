import 'package:batox_mobile/Style/customColor.dart';
import 'package:flutter/material.dart';

class listProduct extends StatefulWidget {
  listProduct({Key? key}) : super(key: key);

  @override
  State<listProduct> createState() => _listProductState();
}

class _listProductState extends State<listProduct> {
  List<Map<String, String>> listModel = [
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
  @override
  Widget build(BuildContext context) {
    Widget customAppBar(String imageUrl, String name) {
      return Row(
        children: [
          Image(
            image: AssetImage(imageUrl),
            width: 16,
            height: 16,
          ),
          SizedBox(
            width: 10,
          ),
          Text(name,
              style: TextStyle(
                  color: red, fontSize: 16, fontWeight: FontWeight.w700)),
        ],
      );
    }

    return Scaffold(
        appBar: AppBar(
            toolbarHeight: 100,
            backgroundColor: white,
            elevation: 0,
            title: Column(children: [
              Row(
                children: [
                  BackButton(
                    color: black,
                  ),
                  Text("Classic",
                      style: TextStyle(
                          color: black,
                          fontSize: 24,
                          fontWeight: FontWeight.w700)),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      customAppBar("images/iconFilter.png", "Filter"),
                      SizedBox(
                        width: 10,
                      ),
                      customAppBar("images/iconSort.png", "Sort")
                    ],
                  ),
                  customAppBar("images/iconMapRed.png", "Any")
                ],
              )
            ])),
        body: Container(
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
                          Container(
                            width: double.infinity,
                            height: 217,
                            color: Colors.grey.shade200,
                            child: Image(image: AssetImage("${data['image']}")),
                          ),
                          Container(
                            padding: EdgeInsets.all(32),
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
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
                                          image:
                                              AssetImage("images/iconMap.png"),
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
                }).toList())));
  }
}
