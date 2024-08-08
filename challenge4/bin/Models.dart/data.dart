import 'product.dart';

class Data {
  List<Product> products;
  Data({required this.products});

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
        products: List.from(json['products']).map((element) {
      return Product.fromJson(element);
    }).toList());
  }

  Map<String, dynamic> toJson() {
    return {
      "products": products.map((element) {
        return element.toJson();
      })
    };
  }

  getProductById(String id) {
    for (var product in products) {
      if (product.id == id) {
        print("-" * 30);
        print(product.toJson());
        print("-" * 30);
        return;
      }
    }
    print("product no found");
  }

  listAllProducts() {
    print("\n\n\nprint all products");
    for (var product in products) {
      print("-" * 30);
      print(product.toJson());
    }
    print("-" * 30);
  }

  updateProductQuantity(String id, int newQuantity) {
    for (var product in products) {
      if (product.id == id) {
        product.quantity = newQuantity;
        return;
      }
    }
    print("product no found");
  }

  addProduct(Product product) {
    products.add(product);
  }
}
