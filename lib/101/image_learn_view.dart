import 'package:flutter/material.dart';

class ImageLearnView extends StatelessWidget {
  const ImageLearnView({super.key});

  final String _imagePath =
      'https://upload.wikimedia.org/wikipedia/commons/thumb/0/00/Apple-book.svg/1018px-Apple-book.svg.png';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            width: 400,
            height: 300,
            child: PngImage(
              name: ImageItems().appleWithBookWithoutPath,
            ),
          ),
          Image.network(
            _imagePath,
            errorBuilder: (context, error, stackTrace) => const Icon(Icons.error),
          ),
        ],
      ),
    );
  }
}

class ImageItems {
  final String appleWithBook = 'assets/png/ic_apple_image.png';
  final String appleWithBookWithoutPath = 'ic_apple_image';
}

class PngImage extends StatelessWidget {
  const PngImage({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      _nameWithPath,
      fit: BoxFit.cover,
    );
  }

  String get _nameWithPath => 'assets/png/$name.png';
}
