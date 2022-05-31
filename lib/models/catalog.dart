class CatalogModel {
  static final product = [
    Item(
        id: 1,
        name: 'iPhone 13 pro',
        dec: 'IOS',
        color: 'black',
        image:
            'https://d2d22nphq0yz8t.cloudfront.net/88e6cc4b-eaa1-4053-af65-563d88ba8b26/https://media.croma.com/image/upload/v1631852794/Croma%20Assets/Communication/Mobiles/Images/243488_purmiw.png/mxw_640,f_auto',
        price: 999)
  ];
}

class Item {
  final int id;
  final String name;
  final String dec;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.dec,
      required this.color,
      required this.image,
      required this.price});
}
