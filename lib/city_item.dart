

class CityItem {
  final String name, image, ratting, price;
  CityItem( {
    required this.name,
    required this.image,
    required this.ratting,
    required this.price
  });

}

List<CityItem> cityItem = [
  CityItem(
    name: 'London',
    image: 'assets/image/london.jpg',
    ratting: '4.4',
    price: '${98}',
  ),
  CityItem(
    name: 'Paris',
    image: 'assets/image/paris.jpg',
    ratting: '4.0',
    price: '${100}',
  ),
  CityItem(
    name: 'Tokyo',
    image: 'assets/image/tokyo.jpg',
    ratting: '4.0',
    price: '${99}',
  ),
  CityItem(
    name: 'UK',
    image: 'assets/image/uk.jpg',
    ratting: '4.7',
    price: '${98}',
  ),
  CityItem(
    name: 'Germany',
    image: 'assets/image/germany.jpg',
    ratting: '4.9',
    price: '${97}',
  ),
  CityItem(
    name: 'Canada',
    image: 'assets/image/canada.jpg',
    ratting: '4.9',
    price: '${88}',
  ),
  CityItem(
    name: 'Bangladesh',
    image: 'assets/image/bangladesh.jpg',
    ratting: '4.9', price: '${58}',
  ),
];