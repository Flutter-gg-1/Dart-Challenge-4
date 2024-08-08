class Feature {
  String featureName;
  String value;

  Feature({required this.featureName, required this.value});

  factory Feature.fromJson(Map<String, dynamic> json) {
    return Feature(featureName: json["featureName"], value: json["value"]);
  }

  Map<String, dynamic> toJson() {
    return {
      "featureName": featureName,
      "value": value
    };
  }
}
