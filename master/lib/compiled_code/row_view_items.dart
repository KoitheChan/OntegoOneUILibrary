import 'package:flutter/material.dart';

class RowViewItems extends StatelessWidget {
  const RowViewItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.only(top:100,left: 100),
          child: Container(
            height: 200,
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
                          Container(
                            height: 25,
                            width: 25,
                            child: Image(
                              image: AssetImage("lib/assets/imgs/arrows.png"),
                              color: Color.fromARGB(255, 222, 222, 222),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Positions",
                            style: TextStyle(
                              color: Color.fromARGB(255, 142, 142, 142),
                            ),
                          ),
                          SizedBox(
                            width: 400,
                          ),
                          Text("1"),
                        ],
                      ),
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
                              child: Text(
                                "Pick-Up Number",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 142, 142, 142),
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                right: 90,
                              ),
                              child: Text(
                                "5",
                                textAlign: TextAlign.start,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 150,
                        ),
                        Column(
                          children: [
                            Container(
                              child: Text(
                                "Pick-Date",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 142, 142, 142),
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                right: 0,
                              ),
                              child: Text(
                                "2022-05-30",
                                textAlign: TextAlign.start,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 180,
                        ),
                        Stack(
                          children: [
                            Container(
                              height: 30,
                              width: 30,
                              child: Image(
                                image:
                                    AssetImage("lib/assets/imgs/green_single.png"),
                              ),
                            ),
                            Positioned.fill(
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "1",
                                  style: TextStyle(color: Colors.white),
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
                                "Positions",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 142, 142, 142),
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                right: 140,
                              ),
                              child: Text(
                                "5",
                                textAlign: TextAlign.start,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 108,
                        ),
                        Column(
                          children: [
                            Container(
                              child: Text(
                                "Remarks",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 142, 142, 142),
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                right: 0,
                              ),
                              child: Text(
                                "",
                                textAlign: TextAlign.start,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 189,
                        ),
                        Stack(
                          children: [
                            Container(
                              height: 30,
                              width: 30,
                              child: Image(
                                image: AssetImage("lib/assets/imgs/red_single.png"),
                              ),
                            ),
                            Positioned.fill(
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "0",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ],
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
