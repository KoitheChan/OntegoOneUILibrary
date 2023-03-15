import 'package:flutter/material.dart';

class BackConfirmButton extends StatelessWidget {
  const BackConfirmButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 45,
                        width: 124,
                        decoration:
                            BoxDecoration(color: Color(0xFFFAFAFA), boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 7,
                          ),
                        ]),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Back',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color(0xFF089CD1),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Container(
                        height: 45,
                        width: 124,
                        decoration:
                            BoxDecoration(color: Color(0xFFF3F6F6), boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 7,
                          ),
                        ]),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Confirm',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color(0xFFABADB1),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
    );
  }
}