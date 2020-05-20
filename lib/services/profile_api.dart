import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_boilerplate/utilities/basic_auth.dart';
import 'package:flutter_boilerplate/models/profile_model.dart';

class ProfileAPI {
  // ProfileAPI _profileAPI = ProfileAPI(userid: '20');
  // Note: Above line is used in another class to pass parameters
  ProfileAPI({this.userid});
  final String userid;
  
  Future fetchProfile() async {
    var response = await http.post(
      new Uri.http("sodhis.test", "/api/test"),
      body: {
        "user_id": userid,
      },
      headers: {"Accept": "application/json", "authorization": basicAuth},
    );
    if (response.statusCode == 200) {
      return Profile.fromJson(json.decode(response.body));
    }
    return null;
  }
}
