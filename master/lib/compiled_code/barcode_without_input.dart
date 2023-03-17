import 'package:flutter/material.dart';

class BarcodeScannerWOInput extends StatelessWidget {
  const BarcodeScannerWOInput({super.key});

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
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
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
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
