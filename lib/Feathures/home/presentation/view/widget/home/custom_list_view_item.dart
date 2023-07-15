
import 'package:flutter/cupertino.dart';
import 'package:cached_network_image/cached_network_image.dart';
class CustomBookImage extends StatelessWidget {
  const CustomBookImage({Key? key,
    required this.imageUrl}) : super(key: key);
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 2.6/4,
        child: Container(
          decoration:  BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image:  DecorationImage(
              fit: BoxFit.fill,
              image:NetworkImage(
                  imageUrl
              ),
            ),
          ),
        ),
      );
  }
}