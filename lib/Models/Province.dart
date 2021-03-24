class Province {
  String IlceAdi;
  String IlceAdiEn;
  String IlceID;
  Province({this.IlceAdi, this.IlceAdiEn, this.IlceID});
  factory Province.fromJson(Map<String, dynamic> json) {
    return Province(
      IlceAdi: json["IlceAdi"] as String,
      IlceAdiEn: json["IlceAdiEn"] as String,
      IlceID: json["IlceID"] as String,
    );
  }
}
