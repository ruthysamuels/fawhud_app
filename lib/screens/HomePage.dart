//Ruth-Ann Samuels
//20171450
//This screen was used to test if users were logged in. (Testing Firebase Authentication)
//However, once user is logged in, they are now directed to the home_screen instead.

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:authentification/screens/Start.dart';
import 'Start.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

  class _HomePageState extends State<HomePage> {
   User user;
  final FirebaseAuth _auth = FirebaseAuth.instance;
  bool isloggedin =false;

  checkAuthentification() async{

    _auth.authStateChanges().listen((user) {

      if(user ==null)
      {
        Navigator.push(context, MaterialPageRoute(builder: (context)=> Start()));
      }
    });
  }

   navigateToSignOut()async // Signs out user, carries them to start page.
   {

     Navigator.push(context, MaterialPageRoute(builder: (context)=> Start()));

   }

  getUser() async{ // Calls user from Firebase

    User firebaseUser =  _auth.currentUser;
    await firebaseUser?.reload();
    firebaseUser =  _auth.currentUser;

    if(firebaseUser !=null)
    {
      setState(() {
        this.user =firebaseUser;
        this.isloggedin=true;
      });
    }
  }
   signOut()async { // Sign Out Function
      _auth.signOut();
     navigateToSignOut();
   }

   @override
   void initState(){

     this.checkAuthentification();
     this.getUser();
   }
   @override
   Widget build(BuildContext context) {
     return Scaffold(


         body: Container(
           child: !isloggedin? CircularProgressIndicator():

           Column(
             children: <Widget>[

               SizedBox(height: 40.0),

               Container(

                 height: 300,
                 child: Image(image: AssetImage("images/welcome.jpg"),
                   fit: BoxFit.contain,
                 ),
               ),
               Container(
                 child: Text("Hello ${user.displayName} You are Logged in as ${user.email}",
                   style: TextStyle(
                       fontSize: 20.0,
                       fontWeight: FontWeight.bold
                   ),),
               ),

               RaisedButton(

                 padding: EdgeInsets.fromLTRB(70,10,70,10),
                 onPressed: signOut,
                 child: Text('Signout',style: TextStyle(

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
         )

     );
   }
  }





