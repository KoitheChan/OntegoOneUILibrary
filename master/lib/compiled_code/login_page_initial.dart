import 'package:flutter/material.dart';

class LoginPageInitial extends StatelessWidget {
  const LoginPageInitial({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
                  child: Container(
                    width: 500,
                    height: 300,
                    decoration: BoxDecoration(
                        color: Color(0xFFF3F6F6),
                        boxShadow: [
                          BoxShadow(blurRadius: 7, color: Colors.grey)
                        ]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: SizedBox(
                              width: 600,
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: 'Enter OntegoOne ID',
                                  fillColor: Color(0xFF089CD1),
                                  suffixIcon:
                                      Icon(Icons.lock), //Right Side Icon
                                ),
                              ),
                            ),
                          ),
                        ),
                        Text(
                          'Please enter your OntegoOne ID. You do not have one? Then register at:',
                          style: TextStyle(color: Color(0xFFA3A5AA)),
                        ),
                        Text(
                          'ontego.one',
                          style: TextStyle(color: Color(0xFF089CD1)),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'English |',
                                style: TextStyle(color: Color(0xFFA3A5AA)),
                              ),
                              Text(
                                'Deutsch',
                                style: TextStyle(color: Color(0xFF089CD1)),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Column(
                          children: [
                            Text(
                              'Do you have questions? Then send us an e-mail to: ',
                              style: TextStyle(
                                  fontSize: 10, color: Color(0xFFA3A5AA)),
                            ),
                            Text(
                              'help@ontego.one',
                              style: TextStyle(
                                  fontSize: 10, color: Color(0xFF089CD1)),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
    );
  }
}