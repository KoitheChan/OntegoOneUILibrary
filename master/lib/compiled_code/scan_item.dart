import 'package:flutter/material.dart';

class ScanItem extends StatelessWidget {
  const ScanItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(100.0),
        child: Column(
          children: [
            Container(
              height: 140,
              width: 500,
              color: Color.fromARGB(255, 253, 253, 253),
              child: Column(
                children: [
                  Container(
                    height: 60,
                    width: 500,
                    color: Color(0xFFFFD234),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: 20,
                            left: 20,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Text(
                            "Scan Item",
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 50,
                    width: 500,
                    padding: EdgeInsets.only(
                      top: 15,
                      left: 5,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color(0xFFEAEFF3),
                    ),
                    margin: EdgeInsets.all(10),
                    child: Text(
                      "Choose Item",
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
