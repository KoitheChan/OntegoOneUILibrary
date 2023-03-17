import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class RefreshIcon extends StatelessWidget {
  const RefreshIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Image(image: AssetImage("lib/assets/imgs/refresh.png")),
      ),
    );
  }
}
