import 'dart:convert';

class City {
  String city;
  String state;

  City({required this.city, required this.state});

  //toMap
  Map<String, dynamic> toMap() {
    return {
      'city': city,
      'state': state,
    };
  }

  //toJson
  String toJson() => jsonEncode(toMap());

  //fromMap
  factory City.fromMap(Map<String, dynamic> map) {
    return City(
      city: map['city'] ?? '',
      state: map['state'] ?? '',
    );
  }
  //fromJson
  factory City.fromJson(String json) => City.fromJson(jsonDecode(json));
}
