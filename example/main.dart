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
              NetworkImage('https://example.com/image1.jpg'),
              NetworkImage('https://example.com/image1.jpg'),
              NetworkImage('https://example.com/image1.jpg'),
              NetworkImage('https://example.com/image1.jpg'),
              NetworkImage('https://example.com/image1.jpg'),
            ],
            imageRadius: 15.0,
            overlapOffset: 8.0,
          ),
        ),
      ),
    );
  }
}
