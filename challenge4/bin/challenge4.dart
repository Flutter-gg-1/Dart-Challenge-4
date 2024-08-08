import 'data_set.dart';
import 'Models.dart/data.dart';
import 'Models.dart/product.dart';

void main(List<String> arguments) {
  Data myData = Data.fromJson(data);

  Product product = Product(
      id: "5",
      name: "asdf",
      price: 123,
      quantity: 10,
      type: "aaa",
      warrantyPeriod: 5,
      color: "red",
      features: []);
  print("#" * 30);
  myData.listAllProducts();
  print("#" * 30);

  myData.addProduct(product);
  myData.listAllProducts();
  print("#" * 30);

  myData.getProductById("5");
  print("#" * 30);

  myData.updateProductQuantity("5", 3);

  myData.getProductById("5");
  print("#" * 30);
}
