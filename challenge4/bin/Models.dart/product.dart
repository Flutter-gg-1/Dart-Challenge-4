import 'feature.dart';

class Product {
  String? id;
  String? name;
  double? price;
  int? quantity;
  String? type;
  int? warrantyPeriod;
  String? color;
  List<Feature>? features;
  String? size;
  String? material;

  Product(
      {this.id,
      this.name,
      this.price,
      this.quantity,
      this.type,
      this.warrantyPeriod,
      this.color,
      this.features,
      this.size,
      this.material});

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
        id: json["id"],
        name: json["name"],
        price: json["price"],
        quantity: json["quantity"],
        type: json["type"],
        warrantyPeriod: json["warrantyPeriod"],
        color: json["color"],
        // features: List.from(json["features"]).map((element) {
        //   return Feature.fromJson(element);
        // }).toList(),
        size: json["size"],
        material: json["material"]);
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "name": name,
      "price": price,
      "quantity": quantity,
      "type": type,
      "warrantyPeriod": warrantyPeriod,
      "color": color,
      "features": features?.map((element) {
        return element.toJson();
      }),
      "size": size,
      "material": material,
    };
  }
}
