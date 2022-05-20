import 'package:batox_mobile/Style/customColor.dart';
import 'package:flutter/material.dart';

class itemCommunity extends StatelessWidget {
  const itemCommunity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
              padding: EdgeInsets.only(right: 20, left: 20, top: 5, bottom: 5),
              width: double.infinity,
              color: white,
              alignment: Alignment.topLeft,
              child: Image(
                image: AssetImage("images/iconChat.png"),
                width: 43,
                height: 43,
              )),
          SizedBox(
            height: 200,
          ),
          Image(
            image: AssetImage("images/iconChat2.png"),
            width: 40,
            height: 40,
          ),
          Text("Add a comment \nStart the conversation below",
              style: TextStyle(
                  color: black, fontSize: 16, fontWeight: FontWeight.w300)),
          SizedBox(
            height: 200,
          ),
          Container(
            padding: EdgeInsets.only(right: 20, left: 20, top: 10, bottom: 10),
            width: double.infinity,
            height: 80,
            color: white,
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(100)),
              child: TextFormField(
                keyboardType: TextInputType.name,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Comment",
                    suffixIcon: Image(
                      image: AssetImage("images/iconSend.png"),
                      width: 31,
                      height: 31,
                    ),
                    prefixIcon: Image(
                      image: AssetImage("images/iconKamera.png"),
                      width: 31,
                      height: 31,
                    )),
              ),
            ),
          )
        ],
      ),
    );
  }
}
