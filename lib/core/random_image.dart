import 'package:flutter/material.dart';

class RandomImage extends StatelessWidget {
  const RandomImage({super.key, this.height = 100});
  final double height;

  final String _imageUrl = 'https://picsum.photos/200/300';
  @override
  Widget build(BuildContext context) {
    return Image.network(_imageUrl, height: height, fit: BoxFit.cover);
  }
}
