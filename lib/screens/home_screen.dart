//Ruth-Ann Samuels
//20171450
//This screen shows the different activities and destinations that users can select.

import 'package:authentification/widgets/destination_carousel.dart';
import 'package:authentification/widgets/hotel_carousel.dart';
import 'package:authentification/widgets/kingston_carousel.dart';
import 'package:authentification/widgets/manchester_carousel.dart';
import 'package:authentification/widgets/ste_carousel.dart';
import 'package:flutter/material.dart';



import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'FindPlace.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}


class _HomeScreenState extends State<HomeScreen> {


  int _selectedIndex = 0;
  int _currentTab = 0;
  // List<IconData> _icons = [ // Activity Icons
  //   FontAwesomeIcons.hotel, // Hotels
  //   FontAwesomeIcons.umbrellaBeach,//Beaches
  //   FontAwesomeIcons.pizzaSlice,//Restaurants
  // ];


  // Widget _buildIcon(int index) {
  //   return GestureDetector(
  //     onTap: () {
  //         setState(() {
  //           _selectedIndex = index;
  //         });
  //     },
  //     child: Container(
  //       height: 60.0,
  //       width: 60.0,
  //       decoration: BoxDecoration(
  //         color: _selectedIndex == index
  //             ? Theme.of(context).primaryColor
  //         : Colors.green,
  //         borderRadius: BorderRadius.circular(30.0),
  //       ),
  //       child: Icon(
  //         _icons[index],
  //         size: 25.0,
  //         color: _selectedIndex == index
  //             ? Theme.of(context).backgroundColor
  //         :Colors.amber,
  //       ),
  //     ),
  //   );
  // }
 navigateToSearch()async // Calls Sign Up Page
      {

    Navigator.push(context, MaterialPageRoute(builder: (context)=> RoutesWidget()));

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 30.0),
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 20.0, right: 120.0),
              child: Text(
                'Where do you want to go ?',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20.0),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceAround,
            //   children: _icons
            //       .asMap()
            //       .entries
            //       .map(
            //         (MapEntry map) => _buildIcon(map.key),
            //       )
            //       .toList(),
            // ),
            SizedBox(height: 20.0),
            DestinationCarousel(), // Displays Destination Carousel
            SizedBox(height: 20.0),
            ManchesterCarousel(),//Displays Places in Manchester
            SizedBox(height: 20.0),
            StECarousel(),//Displays Places in St.Elizabeth
            SizedBox(height: 20.0),
            KingstonCarousel(),//Displays Kingston
            SizedBox(height: 20.0),
            HotelCarousel(), // Displays Hotel Carousel
            SizedBox(height: 20.0),



          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar( //Bottom Navigation Bar
        currentIndex: _currentTab,
        onTap: (int value) {
          setState(() {

            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => RoutesWidget()),
            );
            _currentTab = value;


          });
        },
        items: [ //Icons
          BottomNavigationBarItem(
            icon: Icon(

              Icons.search,
              size: 30.0,


            ),
            title: SizedBox.shrink(),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.hotel,
              size: 30.0,
            ),
            title: SizedBox.shrink(),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.beach_access,
              size: 30.0,

            ),
            title: SizedBox.shrink(),
          )
        ],
      ),
    );
  }



}


