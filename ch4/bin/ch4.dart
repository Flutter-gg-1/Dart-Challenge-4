import './model/product.dart';
import './myData.dart';
import 'global.dart';

void main() {
  var x = Products.fromJson(myData);
  var xx = Product(id: "5", name: "Something", price: 200, quantity: 50);
  //print(x.product.first.id);
  displayProducts(x.product);
  updateProductQuantity("4", 100);
  getProductById("4");
  addProduct(xx);
  displayProductsList(gg);
}

displayProducts(List<Product> pro) {
  for (var element in pro) {
    print("--------------");
    gg.add(element);
    print("ID:${element.id}");
    print("Name:${element.name}");
    print("Price:${element.quantity}");
    print("Quntity:${element.quantity}");
  }
}

displayProductsList(List<Product> pro) {
  for (var element in gg) {
    print("--------------");
    print("ID:${element.id}");
    print("Name:${element.name}");
    print("Price:${element.quantity}");
    print("Quntity:${element.quantity}");
  }
}

getProductById(String id) {
  for (var element in gg) {
    if (element.id == id) {
      print("--------------");
      print("ID:${element.id}");
      print("Name:${element.name}");
      print("Price:${element.quantity}");
      print("Quntity:${element.quantity}");
      break;
    }
  }
}

updateProductQuantity(String id, int newQuantity) {
  for (var element in gg) {
    if (element.id == id) {
      element.quantity = newQuantity;
    }
  }
}

addProduct(Product product) {
  gg.add(product);
}
