class Country {
  String id;
  String code_id;
  String name;
  String code;
  String name_en;
  Country({this.id, this.code_id, this.name, this.code, this.name_en});
  factory Country.fromJson(Map<String, dynamic> json) {
    return Country(
      id: json["id"] as String,
      code_id: json["code_id"] as String,
      name: json["name"] as String,
      code: json["code"] as String,
      name_en: json["name_en"] as String,
    );
  }
}
