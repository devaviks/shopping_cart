import 'package:flutter/material.dart';

import '../login/sign_in_main.dart';


class Signup extends StatefulWidget{
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final formKey = GlobalKey<FormState>(); //key for form
  String name="";

  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final double height= MediaQuery.of(context).size.height;
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    return  Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        backgroundColor: Color(0xFFffffff),
        body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(left: 40, right: 40),
          child: Form(
            key: formKey, //key for form
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height:height*0.04),
                Text("Shopping Cart For All", style: TextStyle(fontSize: 30, color:Color(0xffF9BA56)),),
                SizedBox(height: 5,),
                Text("Welcome !", style: TextStyle(fontSize: 30, color:Color(0xffF9BA56)),),
                SizedBox(height: height*0.04,),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Enter your name"
                  ),
                  controller: nameController,
                  validator: (value){
                    if(value!.isEmpty ||!RegExp(r'^[a-z A-Z]+$').hasMatch(value!)){
                      return "Enter correct name";
                    }
                    else{
                      return null;
                    }
                  },
                ),
                SizedBox(height: height*0.04,),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: "Enter your number"
                  ),
                  controller: phoneController,
                  keyboardType: TextInputType.number,
                  maxLength: 10,
                  validator: (value){
                    if(value!.isEmpty ||!RegExp(r'^(0/91)?[7-9][0-9]{9}').hasMatch(value!)){
                      return "Enter correct phone number";
                    }
                    else{
                      return null;
                    }
                  },
                ),
                SizedBox(height: height*0.02,),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: "Enter your email"
                  ),
                  controller: emailController,
                  validator: (value){
                    if(value!.isEmpty ||!RegExp(r'^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$').hasMatch(value!)){
                      return "Enter correct email id";
                    }
                    else{
                      return null;
                    }
                  },
                ),
                SizedBox(height: height*0.04,),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: "Enter your password",
                  ),
                  controller: passwordController,
                  obscureText: true,
                  validator: (value){
                    if(value!.isEmpty ||!RegExp(r'^[a-z A-Z]+$').hasMatch(value!)){
                      return "Enter your password please";
                    }
                    else{
                      return null;
                    }
                  },
                ),
                SizedBox(height: height*0.05,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Sign up", style: TextStyle(fontSize: 22, color: Color(0xffF9BA56)),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        print(nameController);
                        print(phoneController);
                        print(emailController);
                        print(passwordController);
                        if(formKey.currentState!.validate()) {
                          final snackBar = SnackBar(
                              content: Text('Submitting form'));
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                          Route route =
                          MaterialPageRoute(builder: (context) => SignIn());
                          Navigator.push(context, route);
                        }
                      },
                      child: Icon(Icons.arrow_right_alt_outlined, size: 32,),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xffF9BA56),
                        shape: CircleBorder(),
                        padding: EdgeInsets.all(18),
                      ),
                    )

                  ],
                ),
                SizedBox(height: height*0.06,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Sign in', style: TextStyle(color: Colors.indigo, fontSize: 12),),
                Text('forgot password?',style: TextStyle(color: Colors.grey, fontSize: 12),)
              ]
            )
                
              ],
            ),
          ),
        )
        )
    );
  }


}
