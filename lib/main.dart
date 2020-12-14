//Ruth-Ann Samuels
//20171450
//Main class with main method

import 'package:authentification/screens/Start.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'screens/Start.dart';
import 'screens/FindPlace.dart';
import 'package:flutter_google_places/flutter_google_places.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(); // Initializes Firebase
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      theme: ThemeData(

        primaryColor: Colors.green
      ),
      debugShowCheckedModeBanner: false,
      home:Start(), // Start page is always called first (the first screen user will see)
      
    );
  }
}