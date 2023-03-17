
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AfterSelectionPage extends StatelessWidget {
  const AfterSelectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Container(
          height: 500,
          width: 250,
          decoration: BoxDecoration(
              color: Color(0xFFFAFAFA),
              borderRadius: BorderRadius.circular(5),
              boxShadow: [BoxShadow(blurRadius: 7, color: Colors.grey)]),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: const Text(
                  'Choose an Order...',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                ),
                child: ColoredBox(
                  color: Color(0xFFF6902C),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15.0, top: 5),
                    child: SizedBox(
                      height: 35,
                      width: 250,
                      child: Text(
                        'Servicepartner',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: const Text(
                  'All Orders',
                  style: TextStyle(color: Color(0xFF089CD1)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: const Text(
                  '477 (3)',
                  style: TextStyle(color: Color(0xFF089CD1)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: const Text(
                  '478 (3)',
                  style: TextStyle(color: Color(0xFF089CD1)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: const Text(
                  'Add Order',
                  style: TextStyle(color: Color(0xFF089CD1)),
                ),
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 175),
                      child: Container(
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
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 175),
                      child: Container(
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
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
