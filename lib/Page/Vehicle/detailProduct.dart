import 'package:batox_mobile/Page/Preference/partPage.dart';
import 'package:batox_mobile/Page/Vehicle/mainPage.dart';
import 'package:batox_mobile/Style/customColor.dart';
import 'package:batox_mobile/Widget/customButton.dart';
import 'package:flutter/material.dart';

class detailProduct extends StatefulWidget {
  const detailProduct({Key? key}) : super(key: key);

  @override
  State<detailProduct> createState() => _detailProductState();
}

class _detailProductState extends State<detailProduct> {
  Widget myButton(String nameButton, Color colorButton, Color colorName,
      double widhtButton) {
    return SizedBox(
      width: widhtButton,
      height: 61,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: colorButton,
            side: BorderSide(color: red, width: 2),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
        onPressed: () {},
        child: Text(nameButton,
            style: TextStyle(
                color: colorName, fontSize: 24, fontWeight: FontWeight.w700)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
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
        color: Colors.grey.shade300,
        width: double.infinity,
        height: double.infinity,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Column(
              children: [
                Container(
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
                        child: Image(image: AssetImage("images/mobil.png")),
                      ),
                      Container(
                        padding: EdgeInsets.all(32),
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Citroen CX pallas 1978",
                                style: TextStyle(
                                    color: black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700)),
                            SizedBox(
                              height: 11,
                            ),
                            Text("2000 KM",
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
                                      image: AssetImage("images/iconMap.png"),
                                      width: 16,
                                      height: 16,
                                    )),
                                SizedBox(
                                  width: 10,
                                ),
                                Text("Jakarta Pusat",
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
                                Text("Rp. 170.000.000",
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
                              height: 46,
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          myButton("Buy Now", white, red, 180),
                          myButton("Make Offer", red, white, 180)
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
              color: white,
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
                      myButton("Chat Dealer", white, red, 186),
                      myButton("Chat Dealer", white, red, 186),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              color: white,
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                width: 2, color: Colors.grey.shade300))),
                    child: ButtonBar(
                      alignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Text("Detail",
                              style: TextStyle(
                                  color: black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700)),
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text("Explor",
                                style: TextStyle(
                                    color: black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700))),
                        TextButton(
                            onPressed: () {},
                            child: Text("Community",
                                style: TextStyle(
                                    color: black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700)))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: red,
          currentIndex: 0,
          onTap: (i) {
            switch (i) {
              case 0:
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (BuildContext context) => mainPage()));
                break;
              case 1:
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (BuildContext context) => detailProduct()));
                break;
              case 2:
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (BuildContext context) => detailProduct()));
                break;
              case 3:
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (BuildContext context) => mainPage()));
                break;
              case 4:
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (BuildContext context) => mainPage()));
                break;
              default:
            }
          },
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: Image(
                  image: AssetImage("images/iconButton1.png"),
                  width: 32,
                  height: 32,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Image(
                  image: AssetImage("images/iconButton2.png"),
                  width: 32,
                  height: 32,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Image(
                  image: AssetImage("images/iconButton3.png"),
                  width: 32,
                  height: 32,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Image(
                  image: AssetImage("images/iconButton4.png"),
                  width: 32,
                  height: 32,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Image(
                  image: AssetImage("images/iconButton5.png"),
                  width: 32,
                  height: 32,
                ),
                label: ""),
          ]),
    );
  }
}
