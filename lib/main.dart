import 'package:flutter/material.dart';
import 'package:wacth_shop/list/list.dart';
import 'package:wacth_shop/pages/bottom_nav_pages/dabord_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: TextTheme(
          bodyMedium: TextStyle(color: Colors.grey[800]),
        ),
        appBarTheme:
            AppBarTheme(backgroundColor: Color.fromRGBO(255, 248, 226, 1)),
      ),
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int current = 0;
  void _pages(value) {
    current = value;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SelectPages().mainPage[current],
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        child: SizedBox(
          height: 70,
          child: Row(children: [
            Spacer(),
            //dasbord
            GestureDetector(
              onTap: () => _pages(0),
              child: Container(
                padding: EdgeInsets.all(10),
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: current == 0
                        ? Color.fromRGBO(243, 211, 85, 1)
                        : Colors.transparent),
                child: Image.asset(
                  current == 0
                      ? 'asset/icon/home.png'
                      : 'asset/icon/home_outline.png',
                ),
              ),
            ),
            Spacer(),
            //more
            GestureDetector(
              onTap: () => _pages(1),
              child: Container(
                padding: EdgeInsets.all(10),
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: current == 1
                        ? Color.fromRGBO(243, 211, 85, 1)
                        : Colors.transparent),
                child: Image.asset(
                  current == 1
                      ? 'asset/icon/apps.png'
                      : 'asset/icon/apps_outline.png',
                ),
              ),
            ),
            Spacer(),
            //favorite
            GestureDetector(
              onTap: () => _pages(2),
              child: Container(
                padding: EdgeInsets.all(10),
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: current == 2
                        ? Color.fromRGBO(243, 211, 85, 1)
                        : Colors.transparent),
                child: Image.asset(
                  current == 2
                      ? 'asset/icon/search.png'
                      : 'asset/icon/search_outline.png',
                ),
              ),
            ),
            Spacer(),
            //account
            GestureDetector(
              onTap: () => _pages(3),
              child: Container(
                padding: EdgeInsets.all(10),
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: current == 3
                        ? Color.fromRGBO(243, 211, 85, 1)
                        : Colors.transparent),
                child: Image.asset(
                  current == 3
                      ? 'asset/icon/heart.png'
                      : 'asset/icon/heart_outline.png',
                ),
              ),
            ),
            Spacer(),
            GestureDetector(
              onTap: () => _pages(4),
              child: Container(
                padding: EdgeInsets.all(10),
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: current == 4
                        ? Color.fromRGBO(243, 211, 85, 1)
                        : Colors.transparent),
                child: Image.asset(
                  current == 4
                      ? 'asset/icon/user.png'
                      : 'asset/icon/user_outline.png',
                ),
              ),
            ),
            Spacer(),
          ]),
        ),
      ),
    );
  }
}
