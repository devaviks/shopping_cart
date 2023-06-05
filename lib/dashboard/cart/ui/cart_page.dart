
import 'package:flutter/material.dart';

import 'cartappbar.dart';
import 'cartitemssamples.dart';
import 'cartpagenavigationbar.dart';

class CartPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          CartAppBar(),

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
                CartItemSamples(),
                Container(
                 // decoration: BoxDecoration(
                    //borderRadius: BorderRadius.circular(10),
                  margin: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                  padding: EdgeInsets.all(10),
                  child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xff4C53A5),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text("Add Coupon Code",
                      style: TextStyle(
                        color: Color(0xff4C53A5),
                        fontWeight: FontWeight.bold,
                        fontSize: 16
                      ),
                      ),
                    ),
                  ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: CartBottomNavBar(),
    );
  }
}
