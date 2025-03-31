import 'package:flutter/material.dart';

const Color primaryColor = Colors.pink;
const Color accentColor = Colors.amber;

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        centerTitle: true,
        title: Text(
          "First Project",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
      ),
      body: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 8,
        itemBuilder: (context, index) {
          double containerWidth = MediaQuery.of(context).size.width / 5;
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            height: 80,
            width: containerWidth,
            color: index == 0 ? accentColor : primaryColor,
          );
        },
      ),
    );
  }
}
