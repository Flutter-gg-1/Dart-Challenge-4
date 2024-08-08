import '../global.dart';

class Products {
  List<Product> product;

  Products({required this.product});

  factory Products.fromJson(Map<String, dynamic> json) {
    return Products(
        product: json["products"].map<Product>((element) {
      return Product.fromJson(element);
    }).toList());
  }
}

class Product {
  String id;
  String name;
  double price;
  int quantity;

  Product(
      {required this.id,
      required this.name,
      required this.price,
      required this.quantity});

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
        id: json["id"],
        name: json["name"],
        price: json["price"],
        quantity: json["quantity"]);
  }
}

class Electronics extends Product {
  int warrantyPeriod;

  Electronics(
      {required this.warrantyPeriod,
      required super.id,
      required super.name,
      required super.price,
      required super.quantity});
}

class Clothing extends Product {
  String? size;

  Clothing(
      {required super.id,
      required super.name,
      required super.price,
      required super.quantity,
      this.size});

  factory Clothing.fromJson(Map<String, dynamic> json) {
    return Clothing(
        id: json["id"],
        name: json["name"],
        price: json["price"],
        quantity: json["quantity"],
        size: json["size"]);
  }
}
