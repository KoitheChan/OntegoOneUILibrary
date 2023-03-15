import 'package:flutter/material.dart';

class CancelButton extends StatelessWidget {
  const CancelButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
                  child: Container(
                    width: 250,
                    height: 55,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Cancel',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF2FA8D0),
                              fontWeight: FontWeight.bold,
                            )),
                      ],
                    ),
                    decoration:
                        BoxDecoration(color: Color(0xFFFAFAFA), boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 7,
                      ),
                    ]),
                  ),
                ),
    );
  }
}