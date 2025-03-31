import 'package:flutter/material.dart';

class TitleScreen extends StatelessWidget {
  const TitleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 241, 101, 91),
        title: Text("First Project", style: TextStyle(color: Colors.white)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            // Reusing the custom container widget with different data
            CustomContainer(
              title: "Title 1",
              description:
                  "Lorem is a placeholder text commonly used in publishing.",
              color: Colors.purpleAccent,
              borderColor: Colors.deepPurple,
            ),
            SizedBox(height: 20),
            CustomContainer(
              title: "Title 2",
              description:
                  "Lorem is a placeholder text commonly used in publishing.",
              color: Colors.green,
              borderColor: Colors.greenAccent,
            ),
            SizedBox(height: 20),
            CustomContainer(
              title: "Title 3",
              description:
                  "Lorem is a placeholder text commonly used in publishing.",
              color: Colors.orange,
              borderColor: Colors.yellow,
            ),
            SizedBox(height: 20),
            CustomContainer(
              title: "Title 4",
              description:
                  "Lorem is a placeholder text commonly used in publishing.",
              color: Colors.red,
              borderColor: Colors.pinkAccent,
            ),
            SizedBox(height: 20),
            CustomContainer(
              title: "Title 5",
              description:
                  "Lorem is a placeholder text commonly used in publishing.",
              color: Colors.deepPurple,
              borderColor: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}

// Reusable container widget
class CustomContainer extends StatelessWidget {
  final String title;
  final String description;
  final Color color;
  final Color borderColor;

  const CustomContainer({
    required this.title,
    required this.description,
    required this.color,
    required this.borderColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      width: double.infinity,
      decoration: BoxDecoration(
        color: color,
        border: Border.all(width: 4, color: borderColor),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: TextStyle(fontSize: 24)),
          Text(description),
        ],
      ),
    );
  }
}
