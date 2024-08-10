import 'package:flutter/material.dart';
import 'package:flutter_image_overlap/flutter_image_overlap.dart';

/// A simple Flutter app demonstrating the usage of the [OverlappingImages] widget.
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('OverlappingImages Example'),
        ),
        body: const Center(
          child: OverlappingImages(
            images: [
              NetworkImage(
                  'https://img.freepik.com/free-photo/3d-cartoon-back-school_23-2151676655.jpg?size=626&ext=jpg&ga=GA1.1.1857408824.1722596472&semt=ais_hybrid'),
              NetworkImage(
                  'https://img.freepik.com/free-photo/3d-cartoon-back-school_23-2151676655.jpg?size=626&ext=jpg&ga=GA1.1.1857408824.1722596472&semt=ais_hybrid'),
              NetworkImage(
                  'https://img.freepik.com/free-photo/3d-cartoon-back-school_23-2151676655.jpg?size=626&ext=jpg&ga=GA1.1.1857408824.1722596472&semt=ais_hybrid'),
            ],
            imageRadius: 15.0,
            overlapOffset: 8.0,
          ),
        ),
      ),
    );
  }
}
