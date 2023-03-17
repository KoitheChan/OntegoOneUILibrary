import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class GridAppBarMenu extends StatelessWidget {
  const GridAppBarMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Icon(
          Icons.more_vert,
          size: 50,
          color: Color(0xFF47AFD7),
        ),
      ),
    );
  }
}
