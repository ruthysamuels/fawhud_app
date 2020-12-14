//Ruth-Ann Samuels
//20171450
//Destination Class that contains a list of destinations and activities

import 'activity_model.dart';

class Destination {
  String imageUrl;
  String city;
  String parish;
  String description;
  List<Activity> activities;

  Destination({
    this.imageUrl,
    this.city,
    this.parish,
    this.description,
    this.activities,
  });
}

List<Activity> activities = [
  Activity(
    imageUrl: 'images/dunns.jpg',
    name: 'Dunns River Falls',
    type: 'Falls',
    startTimes: ['8:30 am', '4:00 pm'],
    rating: 4,
    startprice: 23,
  ),
  Activity(
    imageUrl: 'images/dolphin.jpg',
    name: 'Dolphin Cove Moon Palace Jamaica',
    type: 'Sightseeing Tour',
    startTimes: ['8:00 pm', '5:00 pm'],
    rating: 3,
    startprice: 139,
  ),
  Activity(
    imageUrl: 'images/mystic.jpg',
    name: 'Mystic Mountain, Rainforest Adventures',
    type: 'Adventure Park',
    startTimes: ['8:00 am', '4:00 pm'],
    rating: 4,
    startprice: 150,
  ),
];

List<Activity> ochistuff = [
  Activity(
    imageUrl: 'images/dunns.jpg',
    name: 'Dunns River Falls',
    type: 'Falls',
    startTimes: ['8:30 am', '4:00 pm'],
    rating: 4,
    startprice: 23,
  ),
];

List<Activity> mobaystuff = [
  Activity(
    imageUrl: 'images/dunns.jpg',
    name: 'Dunns River Falls',
    type: 'Falls',
    startTimes: ['8:30 am', '4:00 pm'],
    rating: 4,
    startprice: 23,
  ),

  Activity(
    imageUrl: 'images/dolphin.jpg',
    name: 'Dolphin Cove Moon Palace Jamaica',
    type: 'Sightseeing Tour',
    startTimes: ['8:00 pm', '5:00 pm'],
    rating: 3,
    startprice: 139,
  )
];


List<Activity> kingstonstuff = [
  Activity(
    imageUrl: 'images/marley.jpg',
    name: 'Bob Marley',
    type: 'Museum',
    startTimes: ['8:30 am', '4:00 pm'],
    rating: 4,
    startprice: 23,
  ),

];

List<Activity> negrilstuff = [
  Activity(
    imageUrl: 'images/negril.jpg',
    name: 'Long Bay Beach',
    type: 'Beach',
    startTimes: ['8:30 am', '4:00 pm'],
    rating: 4,
    startprice: 23,
  ),

];

List<Activity> stestuff = [
Activity(
imageUrl: 'images/77.jpg',
name: '77 West',
type: 'Restaurant',
startTimes: ['8:30 am', '4:00 pm'],
rating: 4,
startprice: 23,
),

Activity(
imageUrl: 'images/77.jpg',
name: 'Treasure Beach',
type: 'Beach',
startTimes: ['8:30 am', '4:00 pm'],
rating: 4,
startprice: 23,
),

];

List<Activity> portstuff = [
  Activity(
    imageUrl: 'images/boston.jpeg',
    name: 'Boston Beach',
    type: 'Beach',
    startTimes: ['8:30 am', '4:00 pm'],
    rating: 4,
    startprice: 23,
  ),

  Activity(
    imageUrl: 'images/77.jpg',
    name: 'Reach Falls',
    type: 'Falls',
    startTimes: ['8:30 am', '4:00 pm'],
    rating: 4,
    startprice: 23,
  ),

];
List<Destination> destinations = [
  Destination(
    imageUrl: 'images/ochi.jpg',
    city: 'Ocho Rios',
    parish: 'St.Ann',
    description: 'Visit St.Ann for an amazing and unforgettable adventure.',
    activities: ochistuff,
  ),
  Destination(
    imageUrl: 'images/mobay.jpg',
    city: 'Montego Bay',
    parish: 'St.James',
    description: 'Visit St.James for an amazing and unforgettable adventure.',
    activities: mobaystuff,
  ),
  Destination(
    imageUrl: 'images/negril.jpg',
    city: 'Negril',
    parish: 'Westmoreland',
    description:
        'Visit Westmoreland for an amazing and unforgettable adventure.',
    activities: negrilstuff  ,
  ),
  Destination(
    imageUrl: 'images/pland.jpg',
    city: 'Port Antonio',
    parish: 'Portland',
    description: 'Visit Portland for an amazing and unforgettable adventure.',
    activities: portstuff,
  ),

  Destination(
    imageUrl: 'images/kingston.jpg',
    city: 'Kingston',
    parish: 'St.Andrew',
    description: 'Visit Kingston for an amazing and unforgettable adventure.',
    activities: kingstonstuff,
  ),
  Destination(
    imageUrl: 'images/ste.jpg',
    city: 'Santa Cruz',
    parish: 'St.Elizabeth',
    description: 'Visit Santa Cruz for an amazing and unforgettable adventure.',
    activities: stestuff,
  ),

];
