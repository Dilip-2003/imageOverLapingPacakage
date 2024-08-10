import 'package:flutter/material.dart';

class OverlappingImages extends StatelessWidget {
  final List<ImageProvider> images;
  final double imageRadius;
  final double overlapOffset;

  const OverlappingImages({
    required this.images,
    this.imageRadius = 12.0,
    this.overlapOffset = 10.0,
    super.key,
  });

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
