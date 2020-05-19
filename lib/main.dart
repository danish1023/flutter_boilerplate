import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_boilerplate/components/open_webview.dart';
import 'package:flutter_boilerplate/utilities/helpers.dart';
import 'package:flutter_boilerplate/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Boilerplate',
      theme: ThemeData(
        primarySwatch: createMaterialColor(Color(0xFF372D61)),
      ),
      darkTheme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'Home'),
      routes: routes,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Text(
          'Hello World!',
          style: GoogleFonts.pacifico(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => openWebView(context, 'About Us', 'https://google.co.in'),
        //onPressed: () => Navigator.pushNamed(context, '/login'),
        child: Icon(Icons.open_in_new),
      ),
    );
  }
}
