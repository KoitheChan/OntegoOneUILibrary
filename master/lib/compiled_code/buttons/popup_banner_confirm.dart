import 'package:flutter/material.dart';

class PopupButtonSuccess extends StatelessWidget {
  const PopupButtonSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Container(
            height: 600,
            width: 500,
           color: Colors.white,
              child: Container(
                height: 450,
                width: 160,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          width: 450,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            //borderRadius: BorderRadius.circular(10),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20.0),
                              topRight: Radius.circular(20.0),
                              bottomLeft: Radius.zero,
                              bottomRight: Radius.zero,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Text(
                              "Picklist sent Succesfully",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Roboto',
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                      
                  Row(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          width: 448,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Color(0xFF31AF80),
                            //borderRadius: BorderRadius.circular(10),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.zero,
                              topRight: Radius.zero,
                              bottomLeft: Radius.circular(20.0),
                              bottomRight: Radius.circular(20.0),
                            ),
                          ),
                          child: Text(
                            "Confirm",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontFamily: 'Roboto',
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ],
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