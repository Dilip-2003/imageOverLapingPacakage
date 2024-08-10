import 'package:flutter/material.dart';
import 'package:flutter_image_overlap/flutter_image_overlap.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('OverlappingImages displays the correct number of images',
      (WidgetTester tester) async {
    // Create a list of images
    final List<ImageProvider> testImages = [
      NetworkImage('https://example.com/image1.jpg'),
      NetworkImage('https://example.com/image2.jpg'),
      NetworkImage('https://example.com/image3.jpg'),
    ];

    // Build the OverlappingImages widget
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: OverlappingImages(
            images: testImages,
            imageRadius: 12.0,
            overlapOffset: 10.0,
          ),
        ),
      ),
    );

    // Check if the correct number of CircleAvatar widgets are displayed
    expect(find.byType(CircleAvatar), findsNWidgets(testImages.length));
  });

  testWidgets('OverlappingImages adjusts width based on number of images',
      (WidgetTester tester) async {
    // Create a list of images
    final List<ImageProvider> testImages = [
      NetworkImage('https://example.com/image1.jpg'),
      NetworkImage('https://example.com/image2.jpg'),
    ];

    // Build the OverlappingImages widget
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: OverlappingImages(
            images: testImages,
            imageRadius: 12.0,
            overlapOffset: 10.0,
          ),
        ),
      ),
    );

    // Calculate expected width
    final double expectedWidth = (testImages.length - 1) * 10.0 + 24.0;

    // Get the actual width of the widget
    final SizedBox sizedBox = tester.widget(find.byType(SizedBox));
    expect(sizedBox.width, equals(expectedWidth));
  });

  testWidgets(
      'OverlappingImages allows customization of image radius and overlap offset',
      (WidgetTester tester) async {
    // Create a list of images
    final List<ImageProvider> testImages = [
      NetworkImage('https://example.com/image1.jpg'),
      NetworkImage('https://example.com/image2.jpg'),
      NetworkImage('https://example.com/image3.jpg'),
    ];

    // Build the OverlappingImages widget with custom radius and offset
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: OverlappingImages(
            images: testImages,
            imageRadius: 15.0,
            overlapOffset: 8.0,
          ),
        ),
      ),
    );

    // Check if the correct number of CircleAvatar widgets are displayed
    expect(find.byType(CircleAvatar), findsNWidgets(testImages.length));

    // Calculate expected width with custom radius and offset
    final double expectedWidth = (testImages.length - 1) * 8.0 + 30.0;

    // Get the actual width of the widget
    final SizedBox sizedBox = tester.widget(find.byType(SizedBox));
    expect(sizedBox.width, equals(expectedWidth));
  });
}
