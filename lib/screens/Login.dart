//Ruth-Ann Samuels
//20171450
//This screen allows user to login to the application.

import 'package:authentification/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'SignUp.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {


  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String _email, _password;



  checkAuthentication() async { // Checks to see if user exists

    _auth.authStateChanges().listen((user) async
    {
      if(user != null)
      {
        Navigator.push(context, MaterialPageRoute(

            builder: (context)=>HomeScreen())
        );
      }
    }
    );
  }

   @override
   void initState()
   {
     super.initState();
     this.checkAuthentication();
   }



  login() async { // Login Function
    if(_formKey.currentState.validate())
    {
      
      _formKey.currentState.save();

      try
      {
       UserCredential user = await _auth.signInWithEmailAndPassword(email: _email, password: _password);
      }

      catch(e)
      {
        showError(e.errormessage);
      }

    }
  }

 showError(String errormessage){

   showDialog(
     
    context: context,
    builder: (BuildContext context)
    {
      return AlertDialog(

        title: Text('ERROR'),
        content: Text(errormessage),

        actions: <Widget>[
          FlatButton(
            
            onPressed: (){
              Navigator.of(context).pop();
            }, 
          
          
          child: Text('OK'))
        ],
      );
    }
   
   
   );

  }

  navigateToSignUp()async // Calls Sign Up Page
  {

    Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUp()));
    
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
              child: Container(

          child: Column(

            children: <Widget>[

              Container(

                height: 322,
                child: Image(image: AssetImage("images/login.jpg"),
                fit: BoxFit.contain,
                ),
              ),

              Container(

                child: Form(
   
                 key: _formKey,
                 child: Column(

                   children: <Widget>[

                     Container(

                       child: TextFormField(

                         validator: (input)
                         {
                            if(input.isEmpty)

                            return 'Enter Email';
                         },

                            decoration: InputDecoration(

                              labelText: 'Email',
                              prefixIcon:Icon(Icons.email)
                            ),

                            onSaved: (input) => _email = input

                         
                       ),
                     ),
                     Container(

                       child: TextFormField(

                         validator: (input)
                         {
                            if(input.length < 6)

                            return 'Provide Minimum 6 Character';
                         },

                            decoration: InputDecoration(

                              labelText: 'Password',
                              prefixIcon:Icon(Icons.lock),
                            ),
                            obscureText: true,


                            onSaved: (input) => _password = input

                         
                       ),
                     ),
                     SizedBox(height:20),

                     RaisedButton(
                       padding: EdgeInsets.fromLTRB(70,10,70,10),
                      onPressed: login,
                      child: Text('LOGIN',style: TextStyle(

                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold
                      
                      )),

                      color: Colors.green,
                      shape: RoundedRectangleBorder(

                        borderRadius: BorderRadius.circular(20.0),
                      ),
                     
                     )
                   ],
                 ),

                ),
              ),

              GestureDetector(
                child: Text('Create an Account?'),
                onTap: navigateToSignUp, // Calls Sign Up Page
              )
            ],
          ),
              ),
      )

    );
  }
}