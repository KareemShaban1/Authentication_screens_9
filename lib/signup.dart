import 'package:flutter/material.dart';
import 'package:login_signup_FlutterApp/login.dart';
import 'package:login_signup_FlutterApp/animation/FadeAnimation.dart';

class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios, size: 20, color: Colors.black,),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 30),

          height: MediaQuery.of(context).size.height - 90,

          width: double.infinity,

          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[

              Column(
                children: <Widget>[
                  FadeAnimation(1, Text("Sign up", style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                  ),)),

                  SizedBox(height: 20,),

                  FadeAnimation(1.2, Text("Create an account, It's free", style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey[700]
                  ),)),
                ],
              ),

              Column(
                children: <Widget>[
                  FadeAnimation(1.2, makeInput(label: "Email")),
                  FadeAnimation(1.3, makeInput(label: "Password", obscureText: true)),
                  FadeAnimation(1.4, makeInput(label: "Confirm Password", obscureText: true)),
                ],
              ),

              FadeAnimation(1.5, Container(
                padding: EdgeInsets.only(top: 3, left: 3),
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
                  height: 50,
                  onPressed: () {},
                  color: Colors.black,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)
                  ),
                  child: Text("Sign up", style: TextStyle(
                    fontWeight: FontWeight.w600, 
                    fontSize: 18,
                    color: Colors.white
                  ),),
                ),
              )),

              FadeAnimation(1.6, Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Already have an account ? " ,style: TextStyle(
                      fontWeight: FontWeight.w600, fontSize: 18,color: Colors.black
                  ),),


                  new GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                    child: new Text("Sign In", style: TextStyle(
                        fontWeight: FontWeight.w600, fontSize: 20,color: Colors.red
                    ),),
                  )

                ],
              )),


            ],
          ),
        ),
      ),
    );
  }

  Widget makeInput({label, obscureText = false}) {

    return Column(

      crossAxisAlignment: CrossAxisAlignment.start,

      children: <Widget>[

        Text(label, style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w400,
          color: Colors.black87
        ),),

        SizedBox(height: 5,),

        TextField(
          obscureText: obscureText,


          decoration: InputDecoration(

            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),

            enabledBorder: OutlineInputBorder(
                borderRadius: const BorderRadius.all(
                  const Radius.circular(15.0),
                ),
              borderSide: BorderSide(color: Colors.grey[400],style: BorderStyle.solid)
            ),

            border: OutlineInputBorder(
                borderRadius: const BorderRadius.all(
                  const Radius.circular(20.0),
                ),
              borderSide: BorderSide(color: Colors.grey[400])
            ),
          ),
        ),

        SizedBox(height: 30,),

      ],
    );
  }
}