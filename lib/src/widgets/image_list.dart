import "package:flutter/material.dart";
import "../models/image_model.dart";

class ImageList extends StatelessWidget {
  final List<ImageModel> images;

  ImageList({super.key, required List<ImageModel> this.images});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, int index) {
        return Image.network(images[index].url);
      },
      itemCount: images.length,
    );
  }
}
