void main() {
  var mgr = Mgr();

  var newP = Product(id: '100', name: 'New', price: 0.5, quanitty: 12);
  mgr.addProduct(newP);
  print('------------------');
  mgr.showAll();
  print('------------------');
  mgr.updateQuant(id: '1', q: 300);
  print('------------------');
  print(mgr.getProductById('1')!.toJson());
}

class Mgr {
  List<Product> products =
      jsonData['products']!.map((e) => Product.fromJson(e)).toList();

  Product? getProductById(String id) =>
      products.where((e) => e.id == id).toList().first;

  void showAll() => print(products.map((e) => e.toJson()));

  void updateQuant({required String id, required int q}) {
    var selection = products.where((e) => e.id == id).toList().first;
    selection.quanitty = q;
  }

  void addProduct(Product p) {
    products.add(p);
  }
}

class Product {
  String? id;
  String? name;
  num? price;
  num? quanitty;

  Product({this.id, this.name, this.price, this.quanitty});

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
        id: json['id'],
        name: json['name'],
        price: json['price'],
        quanitty: json['quantity']);
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'name': name, 'price': price, 'quantity': quanitty};
  }
}

class Electronics extends Product {
  num? warrantyPeriod;

  Electronics({this.warrantyPeriod});

  factory Electronics.fromJson(Map<String, dynamic> json) {
    return Electronics(warrantyPeriod: json['warrantyPeriod']);
  }
}

class Clothing extends Product {
  String? size;

  Clothing({this.size});

  factory Clothing.fromJson(Map<String, dynamic> json) {
    return Clothing(size: json['size']);
  }
}

var jsonData = {
  "products": [
    {
      "id": "1",
      "name": "Smartphone",
      "price": 699.99,
      "quantity": 50,
      "type": "Electronics",
      "warrantyPeriod": 24,
      "color": "Black",
      "features": [
        {"featureName": "Screen Size", "value": "6.1 inches"},
        {"featureName": "Battery Life", "value": "24 hours"},
        {"featureName": "Camera", "value": "12MP"}
      ]
    },
    {
      "id": "2",
      "name": "Laptop",
      "price": 999.99,
      "quantity": 30,
      "type": "Electronics",
      "warrantyPeriod": 12,
      "color": "Silver"
    },
    {
      "id": "3",
      "name": "T-Shirt",
      "price": 19.99,
      "quantity": 100,
      "type": "Clothing",
      "size": "M",
      "material": "Cotton"
    },
    {
      "id": "4",
      "name": "Jeans",
      "price": 39.99,
      "quantity": 75,
      "type": "Clothing",
      "size": "L",
      "material": "Denim"
    }
  ]
};
