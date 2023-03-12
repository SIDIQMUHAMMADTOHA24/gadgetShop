import 'package:flutter/material.dart';
import 'package:wacth_shop/pages/bottom_nav_pages/account_pages.dart';
import 'package:wacth_shop/pages/bottom_nav_pages/dabord_pages.dart';
import 'package:wacth_shop/pages/bottom_nav_pages/fav_pages.dart';
import 'package:wacth_shop/pages/bottom_nav_pages/more_pages.dart';
import 'package:wacth_shop/pages/bottom_nav_pages/search_pages.dart';

import '../pages/tab_pages/all_tab_pages.dart';
import '../pages/tab_pages/apple_tab_pages.dart';
import '../pages/tab_pages/google_tab_pages.dart';
import '../pages/tab_pages/huawei_tab_pages.dart';
import '../pages/tab_pages/samsung_tab_pages.dart';

//list main page

class SelectPages {
  List mainPage = [
    DasbordPages(),
    MorePages(),
    SearchPages(),
    FavoritePages(),
    AccountPages()
  ];
}

//list tab

class ListData {
  List namePages = ['All', 'Samsung', 'Apple', 'Huawei', 'Google'];

  List listPages = [
    const AllTabPages(),
    const SamsungTabPages(),
    const AppleTabPages(),
    const HuaweiTabPages(),
    const GoogleTabPages()
  ];
}

//List all

class ListAll {
  //list name
  List listName = ['smart wacth', 'headset', 'earpods'];

  //list product
  List listProcut = [
    'asset/all/apple_watch.png',
    'asset/all/headset.png',
    'asset/all/earpods.png',
  ];

  //price product
  List priceProduct = ['487', '19', '26'];

  //rateProduct
  List rateProduct = [
    '4.8',
    '4.7',
    '4.9',
  ];

  //Like Product
  List likeProduct = [
    '89%',
    '88%',
    '88%',
  ];

  //color product
  List<Color> colorProduct = [
    Color.fromRGBO(247, 211, 157, 1),
    Color.fromRGBO(254, 179, 150, 1),
    Color.fromRGBO(135, 185, 244, 1)
  ];
}

//Recomended

class ListRecomend {
  //list name
  List listName = ['Smart Wacth', 'Headset Gaming', 'Earpods'];

  //list product
  List listProcut = [
    'asset/recomend/apple_wacth_recomend.png',
    'asset/recomend/headset_recomend.png',
    'asset/recomend/iphone14_recomend.png',
  ];

  //Like Product
  List likeProduct = [
    '98%',
    '97%',
    '99%',
  ];

  //color product 1
  List<Color> colorProduct1 = [
    Color.fromRGBO(166, 212, 180, 1),
    Color.fromRGBO(245, 236, 205, 1),
    Color.fromRGBO(228, 153, 124, 1)
  ];

  //color product 2
  List<Color> colorProduct2 = [
    Color.fromRGBO(139, 183, 152, 1),
    Color.fromRGBO(216, 210, 185, 1),
    Color.fromRGBO(254, 179, 150, 1)
  ];

  //price product
  List priceProduct = ['487', '75', '1.625'];

  //rateProduct
  List rateProduct = [
    '4.8',
    '4.7',
    '4.9',
  ];
}


