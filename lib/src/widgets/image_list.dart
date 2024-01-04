import "package:flutter/material.dart";
import "../models/image_model.dart";

class ImageList extends StatelessWidget {
  final List<ImageModel> images;

  ImageList({super.key, required List<ImageModel> this.images});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, int index) {
        return buildImage(images[index], context);
      },
      itemCount: images.length,
    );
  }

  Widget buildImage(ImageModel image, BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      margin: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            child: Image.network(image.url),
            margin: const EdgeInsets.only(bottom: 20.0),
          ),
          Text(image.title,
              style:
                  DefaultTextStyle.of(context).style.apply(fontSizeFactor: 2.0))
        ],
      ),
    );
  }
}
