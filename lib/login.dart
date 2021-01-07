import 'package:flutter/material.dart';
import 'package:login_signup_FlutterApp/animation/FadeAnimation.dart';
import 'package:login_signup_FlutterApp/signup.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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

      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,

        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[

            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[

                  Column(
                    children: <Widget>[


                      FadeAnimation(1, Text("Login", style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold
                      ),)),

                      SizedBox(height: 10,),

                      FadeAnimation(1.2, Text("Login to your account", style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey[700]
                      ),)),

                      SizedBox(height: 10,),

                      // FadeAnimation(1.2, Container(
                      //   height: MediaQuery.of(context).size.height / 5,
                      //   decoration: BoxDecoration(
                      //       image: DecorationImage(
                      //           image: AssetImage('assets/image.png'),
                      //           fit: BoxFit.cover
                      //       )
                      //   ),
                      // )),

                    ],
                  ),

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      children: <Widget>[
                        FadeAnimation(1.2, makeInput(label: "Email")),
                        FadeAnimation(1.3, makeInput(label: "Password", obscureText: true)),
                      ],
                    ),
                  ),

                  FadeAnimation(1.4, Padding(

                    padding: EdgeInsets.symmetric(horizontal: 30),

                    child: Container(
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

                        child: Text("Login", style: TextStyle(
                          fontWeight: FontWeight.w600, 
                          fontSize: 18,
                          color: Colors.white
                        ),),
                      ),
                    ),
                  )),

                  FadeAnimation(1.5, Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      Text("Don't have an account ? ", style: TextStyle(
                  fontWeight: FontWeight.w600, fontSize: 18
                  ),),

                    new GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => SignupPage()));
                      },
                      child: new Text("Sign up", style: TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 20,color: Colors.red
                      ),),
                    )



                    ],
                  ))


                ],
              ),
            ),

            // SizedBox(height: 20,),

            // FadeAnimation(1.2, Container(
            //   height: MediaQuery.of(context).size.height / 3,
            //   decoration: BoxDecoration(
            //     image: DecorationImage(
            //       image: AssetImage('assets/image3.png'),
            //       fit: BoxFit.cover
            //     )
            //   ),
            // ))


          ],
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
              borderSide: BorderSide(color: Colors.grey[400],)
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