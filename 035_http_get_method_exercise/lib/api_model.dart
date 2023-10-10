import 'dart:convert';

import 'package:http/http.dart' as http;

class User {
  String? id;
  String? name;

  User({this.id, this.name});

  factory User.createUser(Map<String, dynamic> jsonObject) {
    return User(
        id: jsonObject['id'].toString(),
        name: jsonObject['first_name'] + ' ' + jsonObject['last_name']);
  }

  static Future<User> apiConnection(String id) async {
    Uri apiUrl = Uri.https('reqres.in', 'api/users/$id');

    var apiResult = await http.get(apiUrl);
    var jsonObject = json.decode(apiResult.body);
    var userData = (jsonObject as Map<String, dynamic>)['data'];

    return User.createUser(userData);
  }
}
