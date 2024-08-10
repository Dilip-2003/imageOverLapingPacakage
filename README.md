# OverlappingImages

**OverlappingImages** is a Flutter widget that allows you to display a series of overlapping circular images, with dynamic width adjustment based on the number of images. The widget is highly customizable, enabling you to set the size of the images and the overlap spacing according to your design needs.

## Features

- **Dynamic Width**: The widget automatically adjusts its width based on the number of images provided.
- **Customizable Image Size**: You can set the radius of the circular images to fit your design.
- **Customizable Overlap Spacing**: The spacing between overlapping images can be adjusted, giving you full control over the appearance.
- **Use Cases**: Ideal for displaying avatars in group activities, profile photos in chats, or any scenario requiring stacked images.

## Usage

```dart
import 'package:overlapping_images/overlapping_images.dart';
# For network images
class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OverlappingImages(
      images: [
        NetworkImage('https://example.com/image1.jpg'),
        NetworkImage('https://example.com/image2.jpg'),
        NetworkImage('https://example.com/image3.jpg'),
      ],
      imageRadius: 12.0,  // Default radius is 12.0
      overlapOffset: 10.0, // Default overlap is 10.0
    );
  }
}

# For assets images

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OverlappingImages(
      images: [
                AssetImage('assets/images/photo.jpeg'),
                AssetImage('assets/images/photo.jpeg'),
                AssetImage('assets/images/photo.jpeg'),
                AssetImage('assets/images/photo.jpeg'),
      ],
      imageRadius: 12.0,  // Default radius is 12.0
      overlapOffset: 10.0, // Default overlap is 10.0
    );
  }
}

# For file images

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OverlappingImages(
      images: [
                FileImage(File('/path/to/image1.jpg')),
                FileImage(File('/path/to/image2.jpg')),
      ],
      imageRadius: 12.0,  // Default radius is 12.0
      overlapOffset: 10.0, // Default overlap is 10.0
    );
  }
}