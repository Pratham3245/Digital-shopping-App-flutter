import 'dart:convert';

class CatalogModel {
  static List<Item> product = [
    Item(
        id: 1,
        name: "iphone 13",
        dec: "IOS 9th Series",
        price: 899,
        color: "#33505a",
        image:
            "https://d2d22nphq0yz8t.cloudfront.net/88e6cc4b-eaa1-4053-af65-563d88ba8b26/https://media.croma.com/image/upload/v1631852794/Croma%20Assets/Communication/Mobiles/Images/243488_purmiw.png/mxw_640,f_auto")
  ];
}

class Item {
  final int id;
  final String name;
  final String dec;
  final num price;
  final String color;
  final String image;

  Item({
    required this.id,
    required this.name,
    required this.dec,
    required this.price,
    required this.color,
    required this.image,
  });

  Item copyWith({
    int? id,
    String? name,
    String? dec,
    num? price,
    String? color,
    String? image,
  }) {
    return Item(
      id: id ?? this.id,
      name: name ?? this.name,
      dec: dec ?? this.dec,
      price: price ?? this.price,
      color: color ?? this.color,
      image: image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'dec': dec,
      'price': price,
      'color': color,
      'image': image,
    };
  }

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      id: map['id'],
      name: map['name'],
      dec: map['dec'],
      price: map['price'],
      color: map['color'],
      image: map['image'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Item.fromJson(String source) =>
      Item.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Item(id: $id, name: $name, dec: $dec, price: $price, color: $color, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Item &&
        other.id == id &&
        other.name == name &&
        other.dec == dec &&
        other.price == price &&
        other.color == color &&
        other.image == image;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        dec.hashCode ^
        price.hashCode ^
        color.hashCode ^
        image.hashCode;
  }
}
