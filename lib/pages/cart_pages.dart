import 'package:flutter/material.dart';

import '../list/cart_list.dart';
import '../utils/item_cart.dart';

class CartPages extends StatefulWidget {
  const CartPages({super.key});

  @override
  State<CartPages> createState() => _CartPagesState();
}

class _CartPagesState extends State<CartPages> {
  int sum = CartList().priceProduct.reduce((value, element) => value + element);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 248, 226, 1),
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Stack(alignment: Alignment.center, children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(243, 211, 85, 1),
                  borderRadius: BorderRadius.circular(7)),
            ),
            const Icon(
              Icons.arrow_back,
              color: Colors.black,
            )
          ]),
        ),
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Cart',
          style: TextStyle(
              color: Colors.grey[800],
              fontSize: 30,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView.builder(
        itemCount: CartList().colorCart.length,
        itemBuilder: (context, index) {
          return CartUtils(
            index: index,
          );
        },
      ),
      bottomNavigationBar: BottomAppBar(
          child: Container(
        padding: const EdgeInsets.all(20),
        height: 70,
        decoration: const BoxDecoration(
            color: Color.fromRGBO(250, 235, 188, 1),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        child: Row(children: [
          const Text(
            'Total: ',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const Spacer(),
          Text(sum.toString())
        ]),
      )),
    );
  }
}
