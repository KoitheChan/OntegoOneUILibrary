import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class KeyboardCancelConfirm extends StatelessWidget {
  const KeyboardCancelConfirm({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Row(
          children: [
            Container(
              height: 40,
              width: 204,
              child: Center(
                child: Text(
                  "Cancel",
                  style: TextStyle(
                    color: Color(0xFF2FA8D0),
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            Container(
              height: 40,
              width: 204,
              color: Color(0xFF2FA8D0),
              child: Center(
                child: Text(
                  "Confirm",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
