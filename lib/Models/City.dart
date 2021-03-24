class City {
  String sehirAdi;
  String sehirAdiEn;
  String sehirId;
  City({this.sehirAdi, this.sehirAdiEn, this.sehirId});
  factory City.fromJson(Map<String, dynamic> json) {
    return City(
      sehirAdi: json["SehirAdi"] as String,
      sehirAdiEn: json["SehirAdiEn"] as String,
      sehirId: json["SehirID"] as String,
    );
  }
}
