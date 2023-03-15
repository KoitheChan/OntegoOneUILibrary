import 'package:flutter/material.dart';

class AppbarWithText extends StatelessWidget {
  const AppbarWithText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.all(100.0),
          child: Column(
            children: [
              Container(
                height: 80,
                width: 600,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFF089CD1),
                      Color.fromARGB(255, 200, 232, 243),
                    ],
                  ),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 3),
                    ),
                    Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        //color: Color(0xFFFAFAFA),
                        image: const DecorationImage(
                          image: AssetImage("lib/assets/imgs/icon_shadow.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 20),
                        ),
                        Text(
                          "Goods Receipt",
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xFFFAFAFA),
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                        SizedBox(
                          width: 4,
                          height: 5,
                        ),
                        Row(
                          children: [
                            const Text(
                              "Service Partner",
                              style: TextStyle(
                                fontSize: 14,
                                color: Color(0xFFFAFAFA),
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            const Text(
                              "- Add Order",
                              style: TextStyle(
                                fontSize: 14,
                                color: Color(0xFFFAFAFA),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 300,
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 25),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.signal_wifi_off_outlined,size: 30,
                              color: Color(0xFFFF68F2A),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Image(
                              image: AssetImage("lib/assets/imgs/barcode.png"),
                              height: 30,
                              width: 30,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
