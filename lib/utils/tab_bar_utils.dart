import 'package:flutter/material.dart';

import '../list/list.dart';

class TabBarUtils extends StatefulWidget {
  const TabBarUtils({super.key});

  @override
  State<TabBarUtils> createState() => _TabBarUtilsState();
}

class _TabBarUtilsState extends State<TabBarUtils> {
  int current = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
     
      children: [
        SizedBox(
          height: 50,
          child: ListView.builder(
            itemCount: ListData().namePages.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  current = index;
                  setState(() {});
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: current == index
                          ? Color.fromRGBO(243, 211, 85, 1)
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(10)),
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.only(right: 20),
                  height: 10,
                  child: Center(
                      child: Text(
                    ListData().namePages[index],
                    style: const TextStyle(fontWeight: FontWeight.w500),
                  )),
                ),
              );
            },
          ),
        ),
        ListData().listPages[current]
      ],
    );
  }
}
