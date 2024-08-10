import 'package:flutter/material.dart';

/// A widget that displays a series of overlapping circular images.
///
/// The [OverlappingImages] widget allows you to display a stack of images with
/// customizable radius and overlap spacing. This widget is useful for showing
/// avatars, profile photos, or any scenario where you need a visual stack of
/// images.
///
/// The width of the widget is dynamically adjusted based on the number of images
/// and the overlap offset.
///
/// Example usage:
/// ```dart
/// OverlappingImages(
///   images: [NetworkImage('https://example.com/image1.jpg')],
///   imageRadius: 12.0,
///   overlapOffset: 10.0,
/// )
/// ```
class OverlappingImages extends StatelessWidget {
  /// Creates an instance of [OverlappingImages].
  ///
  /// The [images] argument must not be null and should contain at least one image.
  /// The [imageRadius] specifies the radius of each circular image, and the
  /// [overlapOffset] specifies the amount of overlap between images.
  ///
  /// Example:
  /// ```dart
  /// OverlappingImages(
  ///   images: [NetworkImage('https://example.com/image1.jpg')],
  ///   imageRadius: 12.0,
  ///   overlapOffset: 10.0,
  /// )
  /// ```
  const OverlappingImages({
    required this.images,
    this.imageRadius = 12.0,
    this.overlapOffset = 10.0,
    super.key,
  });

  /// The list of images to display.
  ///
  /// This must be a non-empty list of [ImageProvider]s.
  final List<ImageProvider> images;

  /// The radius of the circular images.
  ///
  /// The default value is 12.0 pixels.
  final double imageRadius;

  /// The spacing between overlapping images.
  ///
  /// The default value is 10.0 pixels.
  final double overlapOffset;

  @override
  Widget build(BuildContext context) {
    // Calculate the total width required based on the number of images and the overlap
    final double totalWidth =
        (images.length - 1) * overlapOffset + imageRadius * 2;

    return SizedBox(
      height: imageRadius * 2,
      width: totalWidth,
      child: Stack(
        children: List.generate(
          images.length,
          (index) => Positioned(
            left: index * overlapOffset,
            child: CircleAvatar(
              radius: imageRadius,
              backgroundImage: images[index],
            ),
          ),
        ),
      ),
    );
  }
}
