
import 'package:flutter/material.dart';
import 'package:shopping_cart/dashboard/wishlist/ui/wishlistappbar.dart';
import 'package:shopping_cart/dashboard/wishlist/ui/wishlistitemssamples.dart';
import 'package:shopping_cart/dashboard/wishlist/ui/wishlistpagenavigationbar.dart';


class WishlistPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          WishlistAppBar(),
          Container(
            height: 700,
            padding: EdgeInsets.only(top: 15),
            decoration: BoxDecoration(
                color: Color(0xffEDECF2),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
                )
            ),
            child: Column(
              children: [
                WishlistItemSamples(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: WishlistBottomNavBar(),
    );
  }
}
