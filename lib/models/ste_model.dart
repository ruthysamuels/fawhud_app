//Ruth-Ann Samuels
//20171450
//Destination Class that contains a list of destinations/activities in St.Elizabeth

class StE {

  String imageUrl;
  String name;
  String address;
  int price;

  StE({
    this.imageUrl,
    this.name,
    this.address,
    this.price,
  });
}

final List<StE> steactivities = [

  StE(
    imageUrl:'images/tbeacj.jpg',
    name: 'Treasure Beach',
    address: 'St.Elizabeth',
    price: 0,
  ),

  StE(
    imageUrl:'images/77.jpg',
    name: '77 West Boutique Hotel',
    address: 'Treasure Beach',
    price: 115,
  ),

  StE(
    imageUrl:'images/lashings.jpg',
    name: 'Lashings Boutique Hotel',
    address: 'Treasure Beach',
    price: 70,
  ),

  StE(
    imageUrl:'images/lleap.jpg',
    name: 'Lovers Leap',
    address: 'Santa Cruz',
    price: 0,
  ),
];
