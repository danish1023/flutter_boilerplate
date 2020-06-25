import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_boilerplate/utilities/basic_auth.dart';
import 'package:flutter_boilerplate/models/profile_model.dart';

class ProfileApi {
  Future fetchProfile(_userId) async {
    var response = await http.post(
      new Uri.http("sodhis.test", "/api/test"),
      body: {
        "user_id": _userId,
      },
      headers: {"Accept": "application/json", "authorization": basicAuth},
    );
    if (response.statusCode == 200) {
      return Profile.fromJson(json.decode(response.body));
    }
    return null;
  }
}

 ///////////////
// How to use /////////////////////////////////////
///////////////

// ProfileApi _profileApi = ProfileApi();
// _profileApi.fetchProfile(_userId);