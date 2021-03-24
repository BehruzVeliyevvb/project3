class City2 {
  String ilceAdi;
  String ilceAdiEn;
  String ilceID;
  City2({this.ilceAdiEn, this.ilceAdi, this.ilceID});
  factory City2.fromJson(Map<String, dynamic> json) {
    return City2(
      ilceAdi: json["IlceAdi"] as String,
      ilceAdiEn: json["IlceAdiEn"] as String,
      ilceID: json["IlceID"] as String,
    );
  }
}
