


import 'package:ch4/json.dart';
import 'package:ch4/models/prduct.dart';

void main(){



  StrogeModel  strogeModel = StrogeModel.fromJson(jsonData);

  FeaturesModel featuresModel = FeaturesModel(featureName: "speed", value: "ddd");

  PrductModel prductModel = PrductModel(color: "green", featuresLis: [featuresModel], id: "2", name: "car", price: 9999, quantity: 3, type: "speed demon", warrantyPeriod: 24);

  strogeModel.getProductById(id: "3");

  strogeModel.updateProductQuantity(id: "3" , newQuantity: 200);

strogeModel.getProductById(id: "3");

strogeModel.addProduct(prductModel);


strogeModel.listAllProducts();


  // print(strogeModel.toJson());

}