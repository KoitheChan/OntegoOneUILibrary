import 'package:flutter/material.dart';

class GridViewButton extends StatelessWidget {
  const GridViewButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
                    child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xFF089CD1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        height: 250,
                        width: 250,
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'lib/assets/imgs/delivery.png',
                                height: 30,
                                width: 30,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Text(
                                  'Delivery',
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white),
                                ),
                              )
                            ],
                          ),
                        )),
                  ),
    );
  }
}