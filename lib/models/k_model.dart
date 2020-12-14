//Ruth-Ann Samuels
//20171450
//Kingston Class that contains a list of destinations/activities in Kingston

class Kingston {

  String imageUrl;
  String name;
  String address;
  int price;

  Kingston({
    this.imageUrl,
    this.name,
    this.address,
    this.price,
  });
}

final List<Kingston> kactivities = [

  Kingston(
    imageUrl:'images/marley.jpg',
    name: 'Bob Marley Museum',
    address: '56 Hope Rd, Kingston',
    price: 0,
  ),

  Kingston(
    imageUrl:'images/100.jpg',
    name: '100',
    address: '100, Hope Rd, Kingston 6',
    price: 115,
  ),

  Kingston(
    imageUrl:'images/tracks.jpg',
    name: 'Usain Bolts Tracks & Records',
    address: ' 67 Constant Spring Rd, Kingston',
    price: 70,
  ),

  Kingston(
    imageUrl:'images/devon.jpeg',
    name: 'Devon House',
    address: '26 Hope Rd, Kingston',
    price: 0,
  ),

  Kingston(
    imageUrl:'images/starbucks.jpg',
    name: 'Starbucks Coffee',
    address: '51 Knutsford Blvd',
    price: 0,
  ),
];
