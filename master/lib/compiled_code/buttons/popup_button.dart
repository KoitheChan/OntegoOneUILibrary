import 'package:flutter/material.dart';

class PopupButton extends StatelessWidget {
  const PopupButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
            child: Container(
              //child: Padding(
                //padding: const EdgeInsets.only(left: 600.0,right: 400.0),
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
                              "Do you want to explore the application first with the help of demo data?",
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
                          width: 224,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Color(0xFFF1675D),
                            //borderRadius: BorderRadius.circular(10),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.zero,
                              topRight: Radius.zero,
                              bottomLeft: Radius.circular(20.0),
                              bottomRight: Radius.zero,
                            ),
                          ),
                          child: Text(
                            "No",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontFamily: 'Roboto',
                              fontSize: 14,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: 224,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Color(0xFF31AF80),
                            //borderRadius: BorderRadius.circular(10),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.zero,
                              topRight: Radius.zero,
                              bottomLeft: Radius.zero,
                              bottomRight: Radius.circular(20.0),
                            ),
                          ),
                          child: Text(
                            "Yes",
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
    );
  }
}
