import 'dart:convert';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' as rootBundle;
import 'package:shopping_cart/dashboard/profile_page.dart';

import '../models/user_model.dart';
import 'cart/ui/cart_page.dart';
import 'dashboardappbar.dart';
import 'categories_widget.dart';
import 'items_widget.dart';

class DashBoardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          DashboardAppBar(),
          CarouselSlider(
            items: [
              Container(
                margin: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://flipkartads.azureedge.net/flipkartads/PLABANNER1.4.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://pbs.twimg.com/media/DhKKO2LXcAAMNDE.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://i.ytimg.com/vi/4NhNaOYl1ww/maxresdefault.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://flipkartads.azureedge.net/flipkartads/dawnde1.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
            options: CarouselOptions(
              height: 140.0,
              enlargeCenterPage: true,
              autoPlay: true,
              aspectRatio: 16 / 9,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: Duration(milliseconds: 700),
              viewportFraction: 0.9,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
              color: Color(0xffEDECF2),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35), topRight: Radius.circular(35)),
            ),
            child:
            Column(
              children: [
                Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 10,
                    ),
                    child: Text("Categories",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF4C53A5),
                        ))),
                CategoriesWidget(),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  child: Text(
                    "Best Selling",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF4C53A5),
                    ),
                  ),
                ),
                ItemsWidget(),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        onTap: (index) {},
        height: 60,
        color: Color(0xFF4C53A5),
        items: [
          Icon(
            Icons.home,
            size: 30,
            color: Colors.white,
          ),
          GestureDetector(
              onTap: () {
                Route route =
                    MaterialPageRoute(builder: (context) => CartPage());
                Navigator.push(context, route);
              },
              child: Icon(
                CupertinoIcons.cart_fill,
                size: 30,
                color: Colors.white,
              )),
          Icon(
            Icons.list,
            size: 30,
            color: Colors.white,
          ),
          GestureDetector(
              onTap: () {
                Route route =
                    MaterialPageRoute(builder: (context) => ProfilePage());
                Navigator.push(context, route);
              },
              child: Icon(
                Icons.person,
                size: 30,
                color: Colors.white,
              ))
        ],
      ),
    );
  }

  Future<List<Products>?> ReadJsonData() async {
    final jsondata =
        await rootBundle.rootBundle.loadString('assets/json/product.json');
    Map<String, dynamic> valueMap = json.decode(jsondata);
    ProductDataModel user = ProductDataModel.fromJson(valueMap);
    return user.products;
  }
}
