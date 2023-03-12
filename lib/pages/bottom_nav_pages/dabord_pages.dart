import 'package:flutter/material.dart';

import '../../utils/appbar_utils.dart';
import '../../utils/discons_utils.dart';
import '../../utils/tab_bar_utils.dart';

class DasbordPages extends StatelessWidget {
  const DasbordPages({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(255, 248, 226, 1),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SingleChildScrollView(
              child: Column(children: const [
            SizedBox(
              height: 25,
            ),
            AppBarUtils(),
            SizedBox(
              height: 10,
            ),
            DisconsUtils(),
            TabBarUtils(),
            SizedBox(
              height: 20,
            )
          ])),
        ),
      ),
    );
  }
}
