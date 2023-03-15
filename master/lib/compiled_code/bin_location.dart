import 'package:flutter/material.dart';

class BinLocation extends StatelessWidget {
  const BinLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.all(100.0),
          child: Container(
            height: 80,
            width: 600,
            color: Color.fromARGB(255, 253, 253, 253,),
            child: Padding(
              padding: const EdgeInsets.only(top: 20.0, left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Bin Location",
                    style: TextStyle(
                      color: Color.fromARGB(255, 142, 142, 142),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5.0),
                    child: Text("05-501-R01-P01"),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
