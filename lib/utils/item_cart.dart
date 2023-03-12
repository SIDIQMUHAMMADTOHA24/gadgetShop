import 'package:flutter/material.dart';

import '../list/cart_list.dart';
import '../list/list.dart';

class CartUtils extends StatefulWidget {
  CartUtils({
    super.key,
    required this.index,
  });

  final int index;

  @override
  State<CartUtils> createState() => _CartUtilsState();
}

class _CartUtilsState extends State<CartUtils> {
  int current = 1;
  increment() {
    current++;
    setState(() {});
  }

  decrement() {
    if (current <= 0) {
      return;
    }

    current--;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Container(
          padding: const EdgeInsets.all(10),
          width: 90,
          height: 90,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: widget.index == 0
                      ? const Radius.circular(0)
                      : const Radius.circular(20),
                  topRight: const Radius.circular(20),
                  bottomLeft: const Radius.circular(20),
                  bottomRight: widget.index == 2
                      ? const Radius.circular(0)
                      : const Radius.circular(20)),
              color: CartList().colorCart[widget.index]),
          child: Image.asset(CartList().listProcut[widget.index]),
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '\$ ${CartList().priceProduct[widget.index] *= current}',
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  CartList().priceDiscount[widget.index],
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.lineThrough,
                    decorationColor: Colors.black,
                    color: Colors.orange,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Text(
                CartList().listName[widget.index],
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey[700]),
              ),
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () => decrement(),
                  child: const CircleAvatar(
                    backgroundColor: Color.fromRGBO(249, 235, 187, 1),
                    radius: 15,
                    child: Icon(Icons.delete_outline_rounded),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Text(
                    current.toString(),
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ),
                GestureDetector(
                  onTap: () => increment(),
                  child: const CircleAvatar(
                    backgroundColor: Color.fromRGBO(249, 235, 187, 1),
                    radius: 15,
                    child: Icon(
                      Icons.add,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 7),
                  child: Text(
                    'Save for letter',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                  ),
                ),
              ],
            ),
          ],
        )
      ]),
    );
  }
}
