import 'package:flutter/material.dart';

class SecondApp extends StatelessWidget {
  const SecondApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second App"),
        centerTitle: true,
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "A summer surprise",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Text(
                    "Cashback 20%",
                    style: TextStyle(color: Colors.white, fontSize: 40),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            // Use Wrap for responsiveness
            Wrap(
              spacing: 10, // horizontal space between items
              runSpacing: 10, // vertical space between rows
              children: List.generate(5, (index) {
                return LabeledBox(label: "Box${index + 1}");
              }),
            ),
            SizedBox(height: 20),
            // Another row of boxes
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [Box(), Box(), Box()],
            ),
          ],
        ),
      ),
    );
  }
}

class LabeledBox extends StatelessWidget {
  final String label;
  const LabeledBox({required this.label, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(color: Colors.grey),
        ),
        SizedBox(height: 10),
        Text(label),
      ],
    );
  }
}

class Box extends StatelessWidget {
  const Box({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 85,
      decoration: BoxDecoration(color: Colors.pinkAccent),
    );
  }
}
