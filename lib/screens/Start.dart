//Ruth-Ann Samuels
//20171450
//This screen is the first screen users will see, that will allow them to sign up or login to the application.

import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'Login.dart';
import 'SignUp.dart';

class Start extends StatefulWidget {
  @override
  _StartState createState() => _StartState();
}

class _StartState extends State<Start> {

 navigateToLogin()async{ // Login Function

   Navigator.push(context, MaterialPageRoute(builder: (context)=> Login()));
 }

  navigateToRegister()async{  // Register Function

   Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUp()));
 }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        child: Column(
          children: <Widget>[

            SizedBox(height: 35.0),

            Container(
              height: 400,

              child: Image(image: AssetImage("images/logo.png"),
              fit: BoxFit.contain,
              ),
            ),

            SizedBox(height : 20),

            RichText(
              
              text: TextSpan(
                text: 'Welcome to ', style: TextStyle(
                 fontSize: 25.0,
                 fontWeight: FontWeight.bold,
                 color: Colors.black
                ),

                children: <TextSpan>[
                  TextSpan(
                    text: 'FAHWUD !', style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color:Colors.green)
                  )
                ]
              ) 
            ),
            SizedBox(height: 10.0),

            Text('Become the most adventurous version of yourself.',style: TextStyle(color:Colors.black),),

            SizedBox(height: 30.0),


            Row( mainAxisAlignment: MainAxisAlignment.center,

              children: <Widget>[

                RaisedButton(
                  padding: EdgeInsets.only(left:30,right:30),
                  
                  onPressed: navigateToLogin,
                  child: Text('LOGIN',style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  ),),

                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  color: Colors.green
                ),

                SizedBox(width:20.0),

                RaisedButton(
                  padding: EdgeInsets.only(left:30,right:30),
                  
                  onPressed: navigateToRegister,
                  child: Text('REGISTER',style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  ),),

                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  color: Colors.green
                ),

              ],
            ),

            SizedBox(height : 20.0),

            SignInButton(
              Buttons.Google,
              text: "Sign up with Google",
              onPressed: () {},
            )

          ],
        ),
      ),
      
    );
  }
}