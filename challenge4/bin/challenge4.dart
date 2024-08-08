import 'dart:io';
import 'data.dart';

void main(List<String> arguments) {

  Product p = Product.fromJson(data);

  print(p.toJson());
}

class Product {
  String id;
  String name;
  double price;
  int quantity;
  static List<Product> products = [];

  Product({
    required this.id,
    required this.name,
    required this.price,
    required this.quantity,
  }) {
    products.add(this);
  }

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
        id: json['products']['id'],
        name: json['products']['name'],
        price: json['products']['price'],
        quantity: json['products']['quantity']);
  }

  toJson() {
    return {'id': id, 'name': name, 'price': price, 'quantity': quantity};
  }

  getProductById(String id) {
    for (var element in products) {
      if (element.id == id) {
        print(element.toJson());
        break;
      }
    }
  }

  listAllProducts() {
    for (var element in products) {
      print(element.toJson());
    }
  }

  updateProductQuantity(String id, int newQuantity) {
    for (var element in products) {
      if (element.id == id) {
        element.quantity = newQuantity;
        break;
      }
    }
  }

  addProduct(Product product){
    products.add(product);
  }
}

class Electronics extends Product {
  int warrantyPeriod;
  Electronics({
    required super.id,
    required super.name,
    required super.price,
    required super.quantity,
    required this.warrantyPeriod,
  });

  factory Electronics.fromJson(Map<String, dynamic> json) {
    return Electronics(
        id: json['products']['id'],
        name: json['products']['name'],
        price: json['products']['price'],
        quantity: json['products']['quantity'],
        warrantyPeriod: json['products']['warrantyPeriod']);
  }

  @override
  toJson() {
    return {
      'id': id,
      'name': name,
      'price': price,
      'quantity': quantity,
      warrantyPeriod: warrantyPeriod
    };
  }
}

class Clothing extends Product {
  String size;

  Clothing({
    required super.id,
    required super.name,
    required super.price,
    required super.quantity,
    required this.size,
  });

  factory Clothing.fromJson(Map<String, dynamic> json) {
    return Clothing(
        id: json['products']['id'],
        name: json['products']['name'],
        price: json['products']['price'],
        quantity: json['products']['quantity'],
        size: json['products']['size']);
  }

  @override
  toJson() {
    return {
      'id': id,
      'name': name,
      'price': price,
      'quantity': quantity,
      size: size
    };
  }
}
