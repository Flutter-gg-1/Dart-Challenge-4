



import 'dart:ffi';




class StrogeModel{

  List<PrductModel> prductModelLis ;


  StrogeModel({required this.prductModelLis});


  factory StrogeModel.fromJson(Map<String,dynamic> json){

    List<PrductModel> tempLis = [];


    for(var val in json["products"]){

      tempLis.add(PrductModel.fromJson(val));

    }


    return StrogeModel(prductModelLis:tempLis );


  
  
  }


  Map<String,dynamic> toJson(){


    List<Map<String,dynamic>> temMap = [];

    for(var val in prductModelLis ){
      temMap.add(val.toJson());
    }


    return{

      "products" : temMap

    };

  }



  getProductById({ required String id}){
    for(int i = 0 ; i< prductModelLis.length ; i++ ){

      if(prductModelLis[i].id == id){

        print("found");
        print(prductModelLis[i].toJson());
        return;

      }


    }
  }


  listAllProducts(){

    print(toJson());

  }

  updateProductQuantity({required String id, required int newQuantity}){


    for(int i = 0 ; i< prductModelLis.length ; i++ ){

      if(prductModelLis[i].id == id){

        print("found");

        prductModelLis[i].quantity = newQuantity;

        return;

      }


    }

  }


  addProduct(PrductModel product){

    prductModelLis.add(product);

  }






}

class PrductModel{


  String id;
  String name;
  num price;
  
  int quantity;
  String type;
  int? warrantyPeriod;
  String? color;

  List<FeaturesModel>? featuresLis = [];  

  PrductModel({

    required this.color,
    required this.featuresLis,
    required this.id,
    required this.name,
    required this.price,
    required this.quantity,
    required this.type,
    required this.warrantyPeriod,
  });



  factory PrductModel.fromJson(Map<String,dynamic> json){

    List<FeaturesModel>?  tempLis = [];

    if(json["features"] != null){
    for(var val in json["features"]){
      
      tempLis.add(FeaturesModel.fromJson(val));
    }
    }
    

    return PrductModel(color: json["color"], featuresLis: tempLis, id: json["id"], name: json["name"], price: json["price"], quantity: json["quantity"], type: json["type"], warrantyPeriod: json["warrantyPeriod"]);



  }

   Map<String,dynamic> toJson(){


    List<Map<String,dynamic>>? tesMap = [];

    if(featuresLis != null){

      for(var val in featuresLis!){

        tesMap!.add(val.toJson());

    }

    }
    else{
      tesMap = null;
    }

    


    return{

     "id": id,
      "name": name,
      "price": price,
      "quantity": quantity,
      "type": type,
      "warrantyPeriod": warrantyPeriod,
      "color": color,
      "features": tesMap

    };
  }





  



}



class FeaturesModel{


  String featureName;
  String value;


  FeaturesModel({

    required this.featureName,
    required this.value,
  });


  factory FeaturesModel.fromJson(Map<String,dynamic> json){

    return FeaturesModel(featureName: json["featureName"], value: json["value"]);

  }


  Map<String,dynamic> toJson(){


    return{

      "featureName" : featureName,
      "value" : value

    };
  }







}