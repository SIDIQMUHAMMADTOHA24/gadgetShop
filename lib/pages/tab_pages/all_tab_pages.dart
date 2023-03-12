import 'package:flutter/material.dart';

import '../../list/list.dart';
import '../../utils/recomend_utils.dart';

class AllTabPages extends StatelessWidget {
  const AllTabPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 220,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: ListAll().likeProduct.length,
            itemBuilder: (context, index) {
              //Product Top

              return Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                margin: EdgeInsets.only(right: 10, top: 10),
                width: 170,
                decoration: BoxDecoration(
                    color: ListAll().colorProduct[index],
                    borderRadius: BorderRadius.only(
                        topLeft: index == 1
                            ? Radius.circular(25)
                            : Radius.circular(0),
                        topRight: Radius.circular(25),
                        bottomLeft: Radius.circular(25),
                        bottomRight: index == 1
                            ? Radius.circular(0)
                            : Radius.circular(25))),
                child: Column(children: [
                  SizedBox(
                    height: 20,
                  ),
                  Image.asset(
                    ListAll().listProcut[index],
                    width: 100,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        ListAll().listName[index],
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.grey[700]),
                      ),
                      Spacer(),
                      Icon(Icons.star_rounded),
                      Text(ListAll().rateProduct[index],
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                          ))
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        '\$ ${ListAll().priceProduct[index]}',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.grey[700]),
                      ),
                      Spacer(),
                      Icon(Icons.favorite, size: 20),
                      Text(ListAll().likeProduct[index],
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                          ))
                    ],
                  ),
                ]),
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Text(
            'Recomended',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        RecomendedUtils()
      ],
    );
  }
}
