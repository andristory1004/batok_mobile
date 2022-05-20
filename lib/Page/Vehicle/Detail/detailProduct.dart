import 'package:batox_mobile/Page/Vehicle/Detail/itemCommunity.dart';
import 'package:batox_mobile/Page/Vehicle/Detail/itemDetail.dart';
import 'package:batox_mobile/Page/Vehicle/Detail/itemExplore.dart';
import 'package:batox_mobile/Page/Vehicle/mainPage.dart';
import 'package:batox_mobile/Style/customColor.dart';
import 'package:batox_mobile/Widget/customBottomNavigation.dart';
import 'package:batox_mobile/Widget/customButton.dart';
import 'package:batox_mobile/Widget/customNavigation.dart';
import 'package:batox_mobile/Widget/formatDetaiProduct.dart';
import 'package:batox_mobile/Widget/formatImageProduct.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tab_container/tab_container.dart';

class detailProduct extends StatefulWidget {
  const detailProduct({Key? key}) : super(key: key);

  @override
  State<detailProduct> createState() => _detailProductState();
}

class _detailProductState extends State<detailProduct>
    with TickerProviderStateMixin {
  List<Tab> myTab = [
    Tab(
      text: "Detail",
    ),
    Tab(text: "Explor"),
    Tab(text: "Community"),
  ];

  late TabController myController;

  @override
  void initState() {
    super.initState();
    myController = TabController(length: myTab.length, vsync: this);
  }

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Widget myButton(String link, String nameButton, Color colorButton,
        Color colorName, double widhtButton) {
      return SizedBox(
        width: widhtButton,
        height: 61,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              primary: colorButton,
              side: BorderSide(color: red, width: 2),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5))),
          onPressed: () {
            Navigator.pushNamed(context, link);
          },
          child: Text(nameButton,
              style: TextStyle(
                  color: colorName, fontSize: 24, fontWeight: FontWeight.w700)),
        ),
      );
    }

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BackButton(),
            Row(
              children: [
                Image(
                    image: AssetImage("images/iconShare.png"),
                    width: 20,
                    height: 20),
                SizedBox(
                  width: 20,
                ),
                Image(
                    image: AssetImage("images/iconLike.png"),
                    width: 20,
                    height: 20),
              ],
            )
          ],
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.zero,
          children: [
            Column(
              children: [
                Container(
                  padding: EdgeInsets.only(bottom: 28),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      formatImageProduct(imageUrl: "images/mobil.png"),
                      formatDetailProduct(
                          namaProduct: "Citroen CX pallas 1978",
                          jarak: "200 KM",
                          lokasi: "Jakarta Pusat",
                          harga: "RP. 170.000.000"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          myButton("/buyIt", "Buy Now", white, red, 180),
                          myButton("", "Make Offer", red, white, 180)
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding:
                  EdgeInsets.only(right: 20, left: 20, top: 28, bottom: 28),
              width: double.infinity,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Bengkel Parjo",
                              style: TextStyle(
                                  color: black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700)),
                          SizedBox(
                            height: 10,
                          ),
                          Text("Joined 2010 .  98% Positive",
                              style: TextStyle(
                                  color: grey,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700)),
                        ],
                      ),
                      Image(
                        image: AssetImage("images/iconBengkel.png"),
                        width: 63,
                        height: 63,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      myButton("", "Chat Dealer", white, red, 186),
                      myButton("", "Chat Dealer", white, red, 186),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration:
                  BoxDecoration(border: Border(bottom: BorderSide(color: red))),
              child: Column(
                children: [
                  TabBar(
                      controller: myController,
                      labelColor: red,
                      unselectedLabelColor: black,
                      labelStyle:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                      unselectedLabelStyle:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                      indicatorColor: red,
                      indicatorWeight: 3,
                      tabs: myTab),
                ],
              ),
            ),
            Container(
              height: 1400,
              child: TabBarView(
                  controller: myController,
                  children: [itemDetail(), itemExplore(), itemCommunity()]),
            ),
          ],
        ),
      ),
      bottomNavigationBar: customBottomNavigation(),
    );
  }
}
