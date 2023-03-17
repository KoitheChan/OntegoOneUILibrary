import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'package:flutter/material.dart';

class GridAppBar extends StatelessWidget {
  const GridAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 500,
        height: 55,
        child: Row(
          children: [
            Image.asset('lib/assets/imgs/menu_logo.png'),
            SizedBox(
              height: 0,
              width: 345,
            ),
            Icon(Icons.signal_wifi_off_outlined,
                size: 30,
                color: Color(
                  0xFFEB675E,
                )),
            Icon(
              Icons.more_vert,
              size: 30,
              color: Color(0xFF47AFD7),
            )
          ],
        ),
      ),
    );
  }
}
