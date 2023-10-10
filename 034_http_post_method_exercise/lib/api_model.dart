import 'dart:convert';

import 'package:http/http.dart' as http;

class PostResult {
  String? id;
  String? name;
  String? job;
  String? createdAt;

  PostResult({this.id, this.name, this.job, this.createdAt});

  factory PostResult.createPostResult(Map<String, dynamic> resultObject) {
    return PostResult(
        id: resultObject['id'],
        name: resultObject['name'],
        job: resultObject['job'],
        createdAt: resultObject['createdAt']);
  }

  static Future<PostResult> apiConnect(String name, String job) async {
    Uri apiUrl = Uri.https('reqres.in', 'api/users');

    var apiResult = await http.post(apiUrl, body: {"name": name, "job": job});
    var jsonObject = json.decode(apiResult.body);

    return PostResult.createPostResult(jsonObject);
  }
}
