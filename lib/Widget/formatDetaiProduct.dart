import 'package:batox_mobile/Style/customColor.dart';
import 'package:flutter/material.dart';

class formatDetailProduct extends StatelessWidget {
  final String namaProduct, jarak, lokasi, harga;
  const formatDetailProduct(
      {Key? key,
      required this.namaProduct,
      required this.jarak,
      required this.lokasi,
      required this.harga})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(32),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(namaProduct,
              style: TextStyle(
                  color: black, fontSize: 20, fontWeight: FontWeight.w700)),
          SizedBox(
            height: 11,
          ),
          Text(jarak,
              style: TextStyle(
                  color: grey, fontSize: 12, fontWeight: FontWeight.w400)),
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
              Text(lokasi,
                  style: TextStyle(
                      color: black, fontSize: 16, fontWeight: FontWeight.w700)),
            ],
          )),
          SizedBox(
            height: 28,
          ),
          Text("BUY IT NOW",
              style: TextStyle(
                  color: grey, fontSize: 12, fontWeight: FontWeight.w700)),
          SizedBox(
            height: 6,
          ),
          Row(
            children: [
              Text(harga,
                  style: TextStyle(
                      color: black, fontSize: 16, fontWeight: FontWeight.w700)),
              SizedBox(
                width: 10,
              ),
              Text("or best offer",
                  style: TextStyle(
                      color: grey, fontSize: 12, fontWeight: FontWeight.w700)),
            ],
          ),
          SizedBox(
            height: 46,
          ),
        ],
      ),
    );
  }
}
