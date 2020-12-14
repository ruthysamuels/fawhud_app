//Ruth-Ann Samuels
//20171450
//Hotel Class that contains a list of hotels

class Hotel {
  String imageUrl;
  String name;
  String address;
  int price;

  Hotel({
    this.imageUrl,
    this.name,
    this.address,
    this.price,
  });
}

final List<Hotel> hotels = [
  Hotel(
    imageUrl:'images/hotel0.jpg',
    name: 'Iberostar Grand Rose Hall',
    address: 'Rose Hall Main Road, Montego Bay',
    price: 175,
  ),
  Hotel(
    imageUrl:'images/hotel1.jpg',
    name: 'Hyatt Ziva Rose Hall',
    address: 'Rose Hall Road, Montego Bay',
    price: 300,
  ),
  Hotel(
    imageUrl:'images/hotel2.jpg',
    name: 'Grand Palladium Jamaica',
    address: 'Point Lucea, Lucea',
    price: 240,
  ),
];
