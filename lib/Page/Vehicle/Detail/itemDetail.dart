import 'package:batox_mobile/Style/customColor.dart';
import 'package:flutter/material.dart';

class itemDetail extends StatefulWidget {
  const itemDetail({Key? key}) : super(key: key);

  @override
  State<itemDetail> createState() => _itemDetailState();
}

class _itemDetailState extends State<itemDetail> {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> listMobil = [
      {
        "namaMobil": "images/mobil.png",
      },
      {
        "namaMobil": "images/mobil2.png",
      },
      {
        "namaMobil": "images/mobil3.png",
      },
      {
        "namaMobil": "images/mobil.png",
      },
      {
        "namaMobil": "images/mobil2.png",
      },
      {
        "namaMobil": "images/mobil3.png",
      },
    ];
    List<Map<String, dynamic>> listInterior = [
      {
        "namaInterior": "images/interior.png",
      },
    ];
    List<Map<String, dynamic>> listEngine = [
      {
        "namaEngine": "images/engine.png",
      },
    ];

    Widget Exterior() {
      return Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Exterior",
                style: TextStyle(
                    color: black, fontSize: 20, fontWeight: FontWeight.w700)),
            SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  children: listMobil.map((data) {
                return Container(
                    margin: EdgeInsets.all(5),
                    color: Colors.grey.shade300,
                    width: 107,
                    height: 91,
                    child: Image(image: AssetImage("${data['namaMobil']}")));
              }).toList()),
            )
          ],
        ),
      );
    }

    Widget Interior() {
      return Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Interior",
                style: TextStyle(
                    color: black, fontSize: 20, fontWeight: FontWeight.w700)),
            SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  children: listInterior.map((data) {
                return Container(
                    margin: EdgeInsets.all(5),
                    color: Colors.grey.shade300,
                    width: 107,
                    height: 91,
                    child: Image(image: AssetImage("${data['namaInterior']}")));
              }).toList()),
            )
          ],
        ),
      );
    }

    Widget Engine() {
      return Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Engine/Drivetrain",
                style: TextStyle(
                    color: black, fontSize: 20, fontWeight: FontWeight.w700)),
            SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  children: listEngine.map((data) {
                return Container(
                    margin: EdgeInsets.all(5),
                    color: Colors.grey.shade300,
                    width: 107,
                    height: 91,
                    child: Image(image: AssetImage("${data['namaEngine']}")));
              }).toList()),
            )
          ],
        ),
      );
    }

    List<Map<String, dynamic>> listSpecs = [
      {
        "title": "Vin",
        "isi": "2Y87N101455",
      },
      {
        "title": "Interior Color",
        "isi": "Black",
      },
      {
        "title": "For Sale By",
        "isi": "Dealer",
      },
      {
        "title": "Exterior Color",
        "isi": "Yellow",
      },
      {
        "title": "Cilinders",
        "isi": 8,
      },
      {
        "title": "Transmision",
        "isi": "Automatic",
      },
      {
        "title": "Full Type",
        "isi": "Gasoline",
      },
      {
        "title": "Body Type",
        "isi": "Coupe",
      },
    ];

    Widget Specs() {
      return Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Engine/Drivetrain",
                style: TextStyle(
                    color: black, fontSize: 20, fontWeight: FontWeight.w700)),
            SizedBox(height: 10),
            Column(
              children: listSpecs.map((data) {
                return Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(color: Colors.grey.shade300))),
                  child: Row(
                    children: [
                      Container(
                        width: 150,
                        child: Text("${data['title']}",
                            style: TextStyle(
                                color: grey,
                                fontSize: 14,
                                fontWeight: FontWeight.w400)),
                      ),
                      Text("${data['isi']}",
                          style: TextStyle(
                              color: black,
                              fontSize: 14,
                              fontWeight: FontWeight.w700)),
                    ],
                  ),
                );
              }).toList(),
            )
          ],
        ),
      );
    }

    List<Map<String, dynamic>> listPayment = [
      {
        "title": "Delivery",
        "isi": "Handle by seller",
      },
      {
        "title": "Deposit",
        "isi": "No",
      },
      {
        "title": "Full Payment",
        "isi": "Reminder due in 3 days",
      },
      {
        "title": "Item Number",
        "isi": "3458354835435",
      },
    ];

    Widget Payment() {
      return Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Delivery And Payment",
                style: TextStyle(
                    color: black, fontSize: 20, fontWeight: FontWeight.w700)),
            SizedBox(height: 10),
            Column(
              children: listPayment.map((data) {
                return Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(color: Colors.grey.shade300))),
                  child: Row(
                    children: [
                      Container(
                        width: 150,
                        child: Text("${data['title']}",
                            style: TextStyle(
                                color: grey,
                                fontSize: 14,
                                fontWeight: FontWeight.w400)),
                      ),
                      Text("${data['isi']}",
                          style: TextStyle(
                              color: black,
                              fontSize: 14,
                              fontWeight: FontWeight.w700)),
                    ],
                  ),
                );
              }).toList(),
            )
          ],
        ),
      );
    }

    return Container(
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.only(right: 25, left: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("About this vehicles",
              style: TextStyle(
                  color: black, fontSize: 20, fontWeight: FontWeight.w700)),
          SizedBox(
            height: 10,
          ),
          Text(
              "CITROEN CX 1978 adalah mobil spesial bagi kami. Antara empat generasi , mobil ini disampaikan dalam beberapa hal. Dari roket saku yang berfokus pada pengemudi hingga pilihan untuk pembeli kursi belakang, sudah datang lingkaran penuh. Sebuah generasi baru akhirnya dirilis di sini. CITROEN CX 1978 tampaknya mengadopsi strategi yang lebih konservatif, tidak menyimpang terlalu jauh dari apa yang membuat generasi keempat sukses menderu. Mari kita ketahuinya lebih dalam: CITROEN CX 1978 berpegang pada formula yang telah teruji. Kami rasa CITROEN seharusnya menggunakan kesempatan ini untuk menetapkan tolok ukur baru di segmen ini. Plastik keras dan kasar terasa perlu diganti. Kualitas plastik yang lebih baik atau bahkan bahan sentuhan lembut akan membantu CITROEN CX 1978 memberikan pengalaman kabin yang lebih kaya.",
              maxLines: 10,
              textAlign: TextAlign.justify,
              style: TextStyle(
                  color: black, fontSize: 12, fontWeight: FontWeight.w400)),
          SizedBox(
            height: 25,
          ),
          Text("About this vehicles",
              style: TextStyle(
                  color: black, fontSize: 20, fontWeight: FontWeight.w700)),
          SizedBox(
            height: 10,
          ),
          Text(
              "THIS IS A PROJECT CAR - PLEASE READ THIS FULL DESCRIPTION CLOSELY",
              maxLines: 10,
              textAlign: TextAlign.justify,
              style: TextStyle(
                  color: black, fontSize: 12, fontWeight: FontWeight.w400)),
          SizedBox(
            height: 20,
          ),
          Exterior(),
          SizedBox(
            height: 20,
          ),
          Interior(),
          SizedBox(
            height: 20,
          ),
          Engine(),
          SizedBox(
            height: 20,
          ),
          Specs(),
          SizedBox(
            height: 20,
          ),
          Payment(),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Something wrong with this listing?",
                  style: TextStyle(
                      color: black, fontSize: 14, fontWeight: FontWeight.w700)),
              TextButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Image(
                      image: AssetImage("images/iconReport.png"),
                      width: 14,
                      height: 14,
                    ),
                    Text("Report",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w700)),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
