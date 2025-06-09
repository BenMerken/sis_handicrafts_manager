import 'package:flutter/material.dart';
import 'package:sis_handicrafts_manager/components/image_card.dart';
import 'package:sis_handicrafts_manager/domain/models/catalogue/catalogue.dart';

class CatalogueListItem extends StatelessWidget {
  const CatalogueListItem({super.key, required this.catalogue});

  final Catalogue catalogue;

  @override
  Widget build(BuildContext context) {
    return ImageCard(
      image: const Image(image: AssetImage('assets/images/yarn-ball.jpg')),
      text: catalogue.name,
    );
  }
}
