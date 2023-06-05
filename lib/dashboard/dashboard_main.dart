import 'package:flutter/material.dart';
import 'package:shopping_cart/dashboard/wishlist/ui/wishlistpage.dart';

import 'cart/ui/cart_page.dart';
import 'dashboard.dart';
import 'item_page.dart';

class DashboardMain extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      routes: {
        "/" : (context) => DashBoardPage(),
        "cartPage" : (context) => CartPage(),
        "wishlistPage" : (context) => WishlistPage(),
        "itemPage" : (context) => ItemPage(),
      },
    );
  }
}