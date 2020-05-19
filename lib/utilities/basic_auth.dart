import 'dart:convert';
String username = 'admin';
String password = 'admin@123';
String basicAuth = 'Basic ' + base64Encode(utf8.encode('$username:$password'));