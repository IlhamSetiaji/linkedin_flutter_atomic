import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final double radius;
  final String imageUrl;

  const Avatar({super.key, required this.radius, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundImage: NetworkImage(imageUrl),
    );
  }
}
