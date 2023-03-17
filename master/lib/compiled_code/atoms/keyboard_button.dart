import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class KeyboardButton extends StatelessWidget {
  const KeyboardButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xFFEAEFF3),
        ),
        height: 40,
        width: 80,
        child: Center(
          child: Text(
            "a",
            style: TextStyle(
              color: Color(0xFF2FA8D0),
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
