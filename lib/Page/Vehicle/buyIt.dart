import 'package:batox_mobile/Style/customColor.dart';
import 'package:flutter/material.dart';

class buyIt extends StatefulWidget {
  const buyIt({Key? key}) : super(key: key);

  @override
  State<buyIt> createState() => _buyItState();
}

class _buyItState extends State<buyIt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: CloseButton(
          color: black,
        ),
        title: Text("Complete Purchase",
            style: TextStyle(
                color: black, fontSize: 24, fontWeight: FontWeight.w700)),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          children: [
            Row(children: [
              Container(
                  width: 140,
                  height: 110,
                  child: Image(image: AssetImage("images/mobil4.png"))),
              SizedBox(
                width: 10,
              ),
              Container(
                width: 225,
                padding: EdgeInsets.all(5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Holden bellmont st wagon Tahun 1976",
                        maxLines: 5,
                        style: TextStyle(
                            color: black,
                            fontSize: 16,
                            fontWeight: FontWeight.w700)),
                    SizedBox(
                      height: 8,
                    ),
                    Text("Auction with Buy it Now",
                        style: TextStyle(
                            color: black,
                            fontSize: 12,
                            fontWeight: FontWeight.w300)),
                    SizedBox(
                      height: 18,
                    ),
                    Text("Rp. 180.000.000",
                        style: TextStyle(
                            color: black,
                            fontSize: 20,
                            fontWeight: FontWeight.w700)),
                    SizedBox(
                      height: 5,
                    ),
                    Text("20 bids . 4 days 3 hour",
                        style: TextStyle(
                            color: black,
                            fontSize: 11,
                            fontWeight: FontWeight.w300)),
                  ],
                ),
              )
            ]),
            SizedBox(
              height: 40,
            ),
            Text(
                "You’re almost there. Click below to continue with your purchase.",
                style: TextStyle(
                    color: black, fontSize: 16, fontWeight: FontWeight.w300)),
            SizedBox(
              height: 130,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: red, minimumSize: Size(387, 69)),
              onPressed: () {},
              child: Text("Commit to buy",
                  style: TextStyle(
                      color: white, fontSize: 20, fontWeight: FontWeight.w700)),
            ),
            SizedBox(
              height: 12,
            ),
            TextButton(
              onPressed: () {},
              child: Text("Cancel",
                  style: TextStyle(
                      color: red, fontSize: 20, fontWeight: FontWeight.w700)),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
                "By clicking commit to buy, your are giving your express consent to share your contact information with the seller and authorizing the seller to contact you regarding this vehicles",
                textAlign: TextAlign.justify,
                style: TextStyle(
                    color: red, fontSize: 12, fontWeight: FontWeight.w300)),
          ],
        ),
      ),
    );
  }
}
