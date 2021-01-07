import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:login_signup_FlutterApp/animation/FadeAnimation.dart';
import 'package:login_signup_FlutterApp/login.dart';
import 'package:login_signup_FlutterApp/signup.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    )
  );
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(

        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,

            children: <Widget>[
              Column(
                children: <Widget>[
                  FadeAnimation(1, Text("Welcome", style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30
                  ),)),
                  SizedBox(height: 20,),

                ],
              ),

              FadeAnimation(1.4, Container(
                height: MediaQuery.of(context).size.height / 3,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/image.png')
                  )
                ),
              )),
              Column(
                children: <Widget>[

                  FadeAnimation(1.6, Container(
                      padding: EdgeInsets.only(right: 3,bottom: 3),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border(
                            bottom: BorderSide(color: Colors.black),
                            top: BorderSide(color: Colors.black),
                            left: BorderSide(color: Colors.black),
                            right: BorderSide(color: Colors.black),
                          )
                      ),

                      child:MaterialButton(
                        minWidth: double.infinity,
                        height: 60,
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                        },
                        color: Colors.black,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          // side: BorderSide(
                          //   color: Colors.black
                          // ),
                          borderRadius: BorderRadius.circular(50)
                        ),
                        child: Text("Login", style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Colors.white
                        ),),
                      ))),

                  SizedBox(height: 20,),


                  FadeAnimation(1.6, Container(
                    padding: EdgeInsets.only(top: 3, left: 3,right: 3,bottom: 3),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border(
                        bottom: BorderSide(color: Colors.black),
                        top: BorderSide(color: Colors.black),
                        left: BorderSide(color: Colors.black),
                        right: BorderSide(color: Colors.black),
                      )
                    ),


                    child: MaterialButton(
                      minWidth: double.infinity,
                      height: 60,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => SignupPage()));
                      },

                      color: Colors.white,
                      elevation: 0,

                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)
                      ),
                      child: Text("Sign up", style: TextStyle(
                        fontWeight: FontWeight.w600, 
                        fontSize: 18,
                        color: Colors.black
                      ),),
                    ),


                  ))


                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
