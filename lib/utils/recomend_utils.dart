import 'package:flutter/material.dart';

import '../list/list.dart';

class RecomendedUtils extends StatelessWidget {
  const RecomendedUtils({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: ListRecomend().listName.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.only(right: 10),
            width: 320,
            height: 120,
            decoration: BoxDecoration(
                color: ListRecomend().colorProduct1[index],
                borderRadius: BorderRadius.circular(20)),
            child: Row(children: [
              Container(
                margin: const EdgeInsets.only(left: 15),
                padding: const EdgeInsets.all(10),
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                  color: ListRecomend().colorProduct2[index],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Image.asset(ListRecomend().listProcut[index]),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    ListRecomend().listName[index],
                    style: const TextStyle(
                        fontSize: 15, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    '\$ ${ListRecomend().priceProduct[index]}',
                    style: const TextStyle(
                        fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      const Icon(Icons.star_rounded),
                      Text(
                        ListRecomend().rateProduct[index],
                        style: const TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Icon(
                        Icons.favorite,
                        size: 18,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        ListRecomend().likeProduct[index],
                        style: const TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      )
                    ],
                  )
                ],
              )
            ]),
          );
        },
      ),
    );
  }
}
