import 'package:flutter/material.dart';
import 'package:sis_handicrafts_manager/types/catalogue.dart';

class CatalogueListItem extends StatelessWidget {
  const CatalogueListItem({super.key, required this.catalogue});

  final Catalogue catalogue;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SizedBox(
      child: Placeholder(child: Center(child: Text(catalogue.name))),
    );
  }
}
