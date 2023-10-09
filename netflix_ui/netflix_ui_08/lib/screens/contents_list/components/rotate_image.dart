import 'package:flutter/material.dart';

class RotateImage extends StatelessWidget {
  const RotateImage({
    Key? key,
    required this.imageUrl,
    this.degree = 0,
  }) : super(key: key);

  final String imageUrl;
  final int degree;

  @override
  Widget build(BuildContext context) {
    // 1
    return Transform.rotate(
      angle: degree * 3.14 / 180,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5.0),
        child: Image(
          image: AssetImage(imageUrl),
          height: 150.0,
        ),
      ),
    );
  }
}
