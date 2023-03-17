import 'package:flutter/material.dart';

class Positions extends StatelessWidget {
  const Positions({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.only(top: 100, left: 100),
          child: Container(
            height: 130,
            width: 550,
            color: Color.fromARGB(255, 253, 253, 253),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 10,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Color.fromARGB(255, 248, 248, 248),
                          width: 2,
                        ),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        bottom: 8.0,
                      ),
                      child: Row(
                        children: [
                          Image(
                            image: AssetImage("lib/assets/imgs/refresh.png"),
                            height: 30,
                            width: 30,
                          ),
                          Text(
                            "Positions",
                            style: TextStyle(
                              color: Color.fromARGB(255, 121, 121, 121),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: 440,
                          ),
                          Text("1"),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  color: Color.fromARGB(255, 228, 228, 228),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 5,
                      bottom: 5,
                      left: 10,
                    ),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              child: Text(
                                "Number",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 142, 142, 142),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 200,
                        ),
                        Column(
                          children: [
                            Container(
                              child: Text(
                                "Date",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 142, 142, 142),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 200,
                        ),
                        Column(
                          children: [
                            Container(
                              child: Text(
                                "Type",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 142, 142, 142),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 20,
                      left: 10,
                    ),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.only(
                                right: 90,
                              ),
                              child: Text(
                                "1",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 0, 0, 0),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 130,
                        ),
                        Column(
                          children: [
                            Container(
                              child: Text(
                                "2016-09-08",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 0, 0, 0),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 185,
                        ),
                        Container(
                          height: 30,
                          width: 30,
                          child: Image(
                            image: AssetImage("lib/assets/imgs/people.png"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
