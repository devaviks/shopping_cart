import 'package:flutter/material.dart';


class DashboardAppBar extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(25),
      child: Row(
        children: [
          Icon(Icons.sort,
          size: 30,
            color:Color(0xFF4C53A5),
          ),
          Padding(padding: EdgeInsets.only(left: 20),
          child: Text("Shopping Cart",
          style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold, color:Color(0xFF4C53A5),),
          ),
          ),
          Spacer(),
          InkWell(
              onTap: (){
                Navigator.pushNamed(context, "cartPage");
              },
              child: Icon(Icons.shopping_bag_outlined,
              size: 32,
                  color:Color(0xFF4C53A5),
              ),
            ),
          SizedBox(width: 10,),
          InkWell(
            onTap: (){
              Navigator.pushNamed(context, "wishlistPage");
            },
            child: Icon(Icons.favorite_border,
              size: 32,
              color:Color(0xFF4C53A5),
            ),
          ),
        ],
      ),
    );
  }
}