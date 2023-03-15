import 'package:flutter/material.dart';

class AddingOrder extends StatelessWidget {
  const AddingOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(100.0),
        child: Column(
          children: [
            Container(
              height: 250,
              width: 600,
              color: Color.fromARGB(255, 253, 253, 253),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 30),
                  ),
                  Text(
                    "Please scan the barcode of the order",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Image(
                    image: AssetImage("lib/assets/imgs/barcode_scan.png"),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 50,
                    width: 500,
                    padding: EdgeInsets.only(top: 15,left: 5,),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color(0xFFEAEFF3),
                    ),
                    margin: EdgeInsets.all(10),
                    child: Text(
                      "Enter Manually",
                      style: TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(255, 180, 183, 184),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
