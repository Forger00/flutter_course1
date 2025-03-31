import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart'; // Import flutter_svg package

class ImageScreen extends StatelessWidget {
  const ImageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Screen"),
        leading: ClipOval(
          child: Image.asset(
            "image/bernhardt.jpg", // Make sure this image is present in the assets
            height: 100,
            width: 100,
            fit: BoxFit.cover,
          ),
        ),
      ),
      body: Column(
        children: [
          Image.network(
            "https://picsum.photos/200/300", // Sample image from Picsum
            height: 500,
            width: 400,
            fit: BoxFit.cover,
          ),
          ClipOval(
            child: SvgPicture.asset(
              "image/image1.svg", // Use SvgPicture.asset for SVG files
              height: 100,
              width: 100,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
