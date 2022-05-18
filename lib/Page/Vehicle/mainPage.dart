import 'package:batox_mobile/Page/Vehicle/detailProduct.dart';
import 'package:flutter/material.dart';

class mainPage extends StatefulWidget {
  const mainPage({Key? key}) : super(key: key);

  @override
  State<mainPage> createState() => _mainPageState();
}

class _mainPageState extends State<mainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("MainPage"),
      bottomNavigationBar: BottomNavigationBar(
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
