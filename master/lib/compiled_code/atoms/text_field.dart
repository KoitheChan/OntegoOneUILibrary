import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class TextFields extends StatelessWidget {
  const TextFields({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 50,
        width: 500,
        padding: EdgeInsets.only(
          top: 15,
          left: 5,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Color(0xFFEAEFF3),
        ),
        margin: EdgeInsets.all(10),
        child: Text(
          "Enter Manually",
          style: TextStyle(
            fontSize: 18,
            color: Color.fromARGB(255, 180, 183, 184),
          ),
        ),
      ),
    );
  }
}
