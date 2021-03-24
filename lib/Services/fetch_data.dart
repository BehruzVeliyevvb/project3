import 'dart:async' show Future;
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import 'package:vb_app/Models/Country.dart';
import 'package:vb_app/Models/City.dart';
import 'package:vb_app/Models/Province.dart';

class Services {
  /// //// /// Get Countries Data /// //// ///
  static Future<String> getCountriesJson() async {
    return await rootBundle.loadString('assets/countryData.json');
  }

  static Future<List<Country>> fetchCountryData() async {
    dynamic countries = await getCountriesJson();
    List<Country> list = parseDataForCountries(countries);
    return list;
  }

  static List<Country> parseDataForCountries(String responseBody) {
    final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
    return parsed.map<Country>((json) => Country.fromJson(json)).toList();
  }

  /// /// Get City Data /// ///
  static Future<String> getCitiesJson(String countryId) async {
    return await rootBundle.loadString('assets/states/$countryId.json');
  }

  static Future<List<City>> fetchCitiesData(String countryId) async {
    dynamic cities = await getCitiesJson(countryId);
    List<City> list = parseDataForCities(cities);
    return list;
  }

  static List<City> parseDataForCities(String responseBody) {
    final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
    return parsed.map<City>((json) => City.fromJson(json)).toList();
  }

  /// //// Get Province  Data /// ///
//   static Future<String> getProvinceJson(String provinceId) async {
//     return await rootBundle.loadString('assets/states/$provinceId.json');
//   }
//
//   static Future<List<Province>> fetchProvinceData(String provinceId) async {
//     dynamic province = await getProvinceJson(provinceId);
//     List<Province> list = parseDataForProvince(province);
//     return list;
//   }
//
//   static List<Province> parseDataForProvince(String responseBody) {
//     final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
//     return parsed.map<Province>((json) => Province.fromJson(json)).toList();
//   }
}
