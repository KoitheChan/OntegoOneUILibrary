import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class PickAndPackCircle extends StatelessWidget {
  const PickAndPackCircle({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(image: AssetImage("lib/assets/imgs/green_single.png")),
          Image(image: AssetImage("lib/assets/imgs/red_single.png"))
        ],
      ),
    );
  }
}
