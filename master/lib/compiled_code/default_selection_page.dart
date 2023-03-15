import 'package:flutter/material.dart';

class DefaultSelectionPage extends StatelessWidget {
  const DefaultSelectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
                  child: Container(
                    height: 500,
                    width: 250,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: const Text(
                            'Choose a Supplier...',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: const Text(
                            'No Supplier',
                            style: TextStyle(color: Color(0xFFF6902C)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: const Text(
                            'Servicepartner',
                            style: TextStyle(color: Color(0xFF089CD1)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 277.0),
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
                              decoration: BoxDecoration(
                                  color: Color(0xFFFAFAFA),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey,
                                      blurRadius: 7,
                                    ),
                                  ]),
                            ),
                          ),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xFFFAFAFA),
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 7,
                        ),
                      ],
                    ),
                  ),
                ),
    );
  }
}