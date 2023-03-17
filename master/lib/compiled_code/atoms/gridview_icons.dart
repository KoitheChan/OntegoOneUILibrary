import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class GridViewIcons extends StatelessWidget {
  const GridViewIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Color(0xFF31AFD8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(image: AssetImage("lib/assets/imgs/goods_receipt.png")),
            Image(image: AssetImage("lib/assets/imgs/pick_and_pack.png")),
            Image(image: AssetImage("lib/assets/imgs/inventory_status.png")),
            Image(image: AssetImage("lib/assets/imgs/inventory_transfer.png")),
            Image(image: AssetImage("lib/assets/imgs/inventory_counting2.png")),
            Image(image: AssetImage("lib/assets/imgs/delivery.png")),
          ],
        ),
      ),
    );
  }
}
