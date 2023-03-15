import 'package:flutter/material.dart';

class GridViewV2 extends StatelessWidget {
  const GridViewV2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
       child: Padding(
                    padding: const EdgeInsets.all(80.0),
                    child: Column(
                      children: [
                        Center(
                          child: Row(
                            // Goods
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Color(0xFF089CD1),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                height: 150,
                                width: 150,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'lib/assets/imgs/goods_receipt.png',
                                      height: 20,
                                      width: 20,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8),
                                      child: Text(
                                        'Goods Receipt',
                                        style: TextStyle(
                                            fontSize: 10, color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Container(
                                //Pick and Pack
                                decoration: BoxDecoration(
                                  color: Color(0xFF089CD1),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                height: 150,
                                width: 150,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'lib/assets/imgs/pick_and_pack.png',
                                      height: 20,
                                      width: 20,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8),
                                      child: Text(
                                        'Pick and Pack',
                                        style: TextStyle(
                                            fontSize: 10, color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Center(
                          child: Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Color(0xFF089CD1),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                height: 150,
                                width: 150,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'lib/assets/imgs/inventory_status.png',
                                      height: 20,
                                      width: 20,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8),
                                      child: Text(
                                        'Inventory Status',
                                        style: TextStyle(
                                            fontSize: 10, color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Color(0xFF089CD1),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                height: 150,
                                width: 150,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'lib/assets/imgs/inventory_transfer.png',
                                      height: 20,
                                      width: 20,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8),
                                      child: Text(
                                        'Inventory Transfer',
                                        style: TextStyle(
                                            fontSize: 10, color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Center(
                          child: Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Color(0xFF089CD1),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                height: 150,
                                width: 150,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'lib/assets/imgs/inventory_counting2.png',
                                      height: 20,
                                      width: 20,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8),
                                      child: Text(
                                        'Inventory Counting',
                                        style: TextStyle(
                                            fontSize: 10, color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Color(0xFF089CD1),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                height: 150,
                                width: 150,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'lib/assets/imgs/delivery.png',
                                      height: 20,
                                      width: 20,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8),
                                      child: Text(
                                        'Delivery',
                                        style: TextStyle(
                                            fontSize: 10, color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
    );
  }
}