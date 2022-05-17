import 'package:batox_mobile/Style/customColor.dart';
import 'package:flutter/material.dart';

class addVehicles extends StatefulWidget {
  const addVehicles({Key? key}) : super(key: key);

  @override
  State<addVehicles> createState() => _addVehiclesState();
}

class _addVehiclesState extends State<addVehicles> {
  @override
  Widget build(BuildContext context) {
    Widget optionVehicle(
        String nameRoutes, String imageUrl, String nameOption) {
      return GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, nameRoutes);
        },
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(width: 1, color: black)),
          margin: EdgeInsets.only(
            left: 20,
            right: 20,
          ),
          width: double.infinity,
          height: 126,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(
                image: AssetImage(imageUrl),
                width: 60,
                height: 60,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                nameOption,
                style: TextStyle(
                    color: black, fontSize: 14, fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: 20, right: 20, top: 20),
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(width: 1, color: black))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Add Vehicle",
                    style: TextStyle(
                        color: black,
                        fontSize: 24,
                        fontWeight: FontWeight.w700),
                  ),
                  IconButton(onPressed: () {}, icon: Icon(Icons.close))
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            optionVehicle('/selectYear', "images/iconCar.png",
                "Car, Truck or Passenger Van"),
            SizedBox(
              height: 40,
            ),
            optionVehicle("", "images/iconMotor.png", "Motorcycle")
          ],
        ),
      ),
    );
  }
}
