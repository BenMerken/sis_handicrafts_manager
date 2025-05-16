import 'package:flutter/material.dart';
import 'package:sis_handicrafts_manager/components/image_card.dart';
import 'package:sis_handicrafts_manager/types/collection.dart';

class CollectionListItem extends StatelessWidget {
  const CollectionListItem({super.key, required this.collection});

  final Collection collection;

  @override
  Widget build(BuildContext context) {
    return ImageCard(
      image: const Image(image: AssetImage('assets/images/yarn-ball.jpg')),
      text: collection.name,
    );
  }
}
