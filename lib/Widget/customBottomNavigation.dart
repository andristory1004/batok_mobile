import 'package:batox_mobile/Page/Vehicle/Detail/detailProduct.dart';
import 'package:batox_mobile/Page/Vehicle/mainPage.dart';
import 'package:batox_mobile/Style/customColor.dart';
import 'package:flutter/material.dart';

class customBottomNavigation extends StatelessWidget {
  const customBottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<BottomNavigationBarItem> myNavigate = [
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
    ];
    return BottomNavigationBar(
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
        items: myNavigate);
  }
}
