import 'package:flutter/material.dart';
import 'package:flutter_application_1/image_screen.dart';
import 'package:flutter_application_1/second_app.dart';
import 'package:flutter_application_1/title_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First App',
      initialRoute: '/', // The initial screen when the app starts
      routes: {
        '/': (context) => ImageScreen(), // Home screen
        '/second': (context) => SecondApp(), // Second app screen
        '/title': (context) => TitleScreen(), // Title screen
      },
      // Optional: You can define a theme for your app here if needed
      theme: ThemeData(
        primarySwatch: Colors.pink,
        textTheme: TextTheme(bodyMedium: TextStyle(color: Colors.black87)),
      ),
    );
  }
}
