class Profile {
  int errorCode;
  String errorMessage;
  Response response;

  Profile({this.errorCode, this.errorMessage, this.response});

  Profile.fromJson(Map<String, dynamic> json) {
    errorCode = json['ErrorCode'];
    errorMessage = json['ErrorMessage'];
    response = json['Response'] != null
        ? new Response.fromJson(json['Response'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ErrorCode'] = this.errorCode;
    data['ErrorMessage'] = this.errorMessage;
    if (this.response != null) {
      data['Response'] = this.response.toJson();
    }
    return data;
  }
}

class Response {
  int id;
  String name;
  String email;

  Response({this.id, this.name, this.email});

  Response.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['email'] = this.email;
    return data;
  }
}