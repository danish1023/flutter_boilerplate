import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/components/webview.dart';

void openWebView(BuildContext context, title, url) {
  Navigator.of(context).push(
    MaterialPageRoute(
      builder: (BuildContext context) => MyWebView(
        title: title,
        url: url,
      ),
    ),
  );
}
