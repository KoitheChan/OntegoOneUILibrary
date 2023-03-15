import 'package:flutter/material.dart';

class PickingConfirmation extends StatelessWidget {
  const PickingConfirmation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
                      child: Container(
                        height: 300,
                        width: 500,
                        decoration: BoxDecoration(
                            color: Color(0xFFF3F6F6),
                            borderRadius: BorderRadius.circular(5),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 7,
                              ),
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.all(40.0),
                          child: Column(
                            children: [
                              const Text('Please Pick'),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 7.0, right: 5, left: 7),
                                child: Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        '20pcs',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 5.0, right: 5.0),
                                        child: Image.asset(
                                          'lib/assets/imgs/pencil.png',
                                          height: 15,
                                          width: 15,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(3.0),
                                        child: Text('of item'),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Text('Etikettendrucker',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Text(
                                  'from Bin Location',
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Text(
                                  '05-601-R03-P01',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 20.0),
                                child: Image.asset(
                                  'lib/assets/imgs/upload.png',
                                  height: 20,
                                  width: 20,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 50),
                                    child: const Text(
                                      'Back',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Color(0xFF089CD1),
                                          fontSize: 15),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 250,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 50),
                                    child: const Text(
                                      'Confirm',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Color(0xFF089CD1),
                                          fontSize: 15),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
    );
  }
}