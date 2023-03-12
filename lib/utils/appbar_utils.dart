import 'package:flutter/material.dart';

import '../pages/cart_pages.dart';

class AppBarUtils extends StatelessWidget {
  const AppBarUtils({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Stack(alignment: Alignment.center, children: [
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
              color: const Color.fromRGBO(243, 211, 85, 1),
              borderRadius: BorderRadius.circular(7)),
        ),
        Image.asset(
          'asset/icon/settings.png',
          width: 20,
        )
      ]),
      Spacer(),
      Text(
        'Gedget',
        style: TextStyle(
            color: Colors.grey[800], fontSize: 30, fontWeight: FontWeight.bold),
      ),
      Spacer(),
      GestureDetector(
        onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CartPages(),
            )),
        child: Stack(alignment: Alignment.center, children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
                color: const Color.fromRGBO(243, 211, 85, 1),
                borderRadius: BorderRadius.circular(7)),
          ),
          const Icon(
            Icons.shopping_bag_outlined,
          ),
        ]),
      ),
    ]);
  }
}
