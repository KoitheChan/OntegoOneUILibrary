import 'package:flutter/material.dart';

class SelectionButton extends StatelessWidget {
  const SelectionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Container(
          height: 200,
          width: 600,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
              child: Column(
                children: [
                  SizedBox(
                    child: Container(
                      height: 70,
                      width: 500,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFF2FA8D0),
                      ),
                      child: Center(
                        child: Text(
                          "Select Supplier",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
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
