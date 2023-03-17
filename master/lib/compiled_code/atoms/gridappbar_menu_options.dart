import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MenuOptions extends StatelessWidget {
  const MenuOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 70,
        width: 150,
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 7,
              )
            ],
            borderRadius: BorderRadius.all(
              Radius.circular(5),
            )),
        child: Column(
          children: [
            SizedBox(
              height: 25,
            ),
            Text('Reset Demo Data'),
          ],
        ),
      ),
    );
  }
}
