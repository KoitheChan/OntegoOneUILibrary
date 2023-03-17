import 'package:flutter/material.dart';

class FontSize extends StatelessWidget {
  const FontSize({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(100.0),
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                SizedBox(
                  width: 600,
                  height: 1000,
                  child: Container(
                    color: Color.fromARGB(255, 254, 254, 254),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Flexible(
                            fit: FlexFit.tight,
                            child: Container(
                              width: 600,
                              height: 50,
                              child: Text(
                                "Ontego One with Font Size 10",
                                style: TextStyle(
                                  fontSize: 10,
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            fit: FlexFit.tight,
                            child: Container(
                              width: 600,
                              height: 50,
                              child: Text(
                                "Ontego One with Font Size 12",
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            fit: FlexFit.tight,
                            child: Container(
                              width: 600,
                              height: 50,
                              child: Text(
                                "Ontego One with Font Size 14",
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            fit: FlexFit.tight,
                            child: Container(
                              width: 600,
                              height: 50,
                              child: Text(
                                "Ontego One with Font Size 15",
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            fit: FlexFit.tight,
                            child: Container(
                              width: 600,
                              height: 50,
                              child: Text(
                                "Ontego One with Font Size 16",
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            fit: FlexFit.tight,
                            child: Container(
                              width: 600,
                              height: 50,
                              child: Text(
                                "Ontego One with Font Size 18",
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            fit: FlexFit.tight,
                            child: Container(
                              width: 600,
                              height: 50,
                              child: Text(
                                "Ontego One with Font Size 20",
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            fit: FlexFit.tight,
                            child: Container(
                              width: 600,
                              height: 50,
                              child: Text(
                                "Ontego One with Font Size 26",
                                style: TextStyle(
                                  fontSize: 26,
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            fit: FlexFit.loose,
                            child: Container(
                              width: 600,
                              height: 80,
                              child: Text(
                                "Ontego One with Font Size 40",
                                style: TextStyle(
                                  fontSize: 40,
                                ),
                              ),
                            ),
                          ),
                        ],
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
