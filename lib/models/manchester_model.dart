//Ruth-Ann Samuels
//20171450
//Manchester Class that contains a list of destination/activities in Manchester



class Manchester {

  String imageUrl;
  String name;
  String address;
  int price;

  Manchester({
    this.imageUrl,
    this.name,
    this.address,
    this.price,
  });
}

final List<Manchester> activities = [

  Manchester(
    imageUrl:'images/rb.jpg',
    name: 'Roxborough Great House',
    address: 'Manchester',
    price: 0,
  ),

  Manchester(
    imageUrl:'images/club.jpg',
    name: 'Manchester Country Club',
    address: 'Mandeville',
    price: 0,
  ),



];
