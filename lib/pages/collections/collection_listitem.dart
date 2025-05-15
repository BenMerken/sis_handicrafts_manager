import 'package:flutter/material.dart';
import 'package:sis_handicrafts_manager/types/collection.dart';

class CollectionListItem extends StatelessWidget {
  const CollectionListItem({super.key, required this.collection});

  final Collection collection;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SizedBox(
      child: Placeholder(child: Center(child: Text(collection.name))),
    );
  }
}
