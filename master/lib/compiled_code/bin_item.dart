import 'package:flutter/material.dart';

class BinItem extends StatelessWidget {
  const BinItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.all(100.0),
          child: Container(
            color: Color.fromARGB(
              255,
              253,
              253,
              253,
            ),
            width: 600,
            height: 150,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15, left: 0.0),
                    child: Column(
                      children: [
                        Text(
                          "Item",
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 18.0),
                          child: Text(
                            "B10000",
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 38.0),
                          child: Text(
                            "Description",
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 69.0),
                          child: Text(
                            "Etikettendrucker",
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 110,
                      left: 120,
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 25,
                          width: 40,
                          color: Color.fromARGB(255, 199, 199, 199),
                          child: Center(
                            child: Text(
                              "970",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15.0, left: 80.0),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left:55.0),
                          child: Text(
                            "Quantity",
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 40.0),
                          child: Text(
                            "10 pc",
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 38.0),
                          child: Text(
                            "Batch",
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 60.0),
                          child: Text(
                            "B1-00098",
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, bottom: 20),
                  child: Container(
                    height: 30,
                    width: 30,
                    child: Image(
                      image: AssetImage(
                        "lib/assets/imgs/tick_box.png",
                      ),
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
