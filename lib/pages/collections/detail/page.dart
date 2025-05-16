import 'package:flutter/material.dart';
import 'package:sis_handicrafts_manager/components/rating.dart';
import 'package:sis_handicrafts_manager/types/collection.dart';

class CollectionDetailPage extends StatefulWidget {
  const CollectionDetailPage({super.key, required this.collection});

  final Collection collection;

  @override
  State<CollectionDetailPage> createState() => _CollectionDetailPageState();
}

class _CollectionDetailPageState extends State<CollectionDetailPage> {
  @override
  Widget build(BuildContext context) {
    final collection = widget.collection;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(collection.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: SizedBox(
                width: 150,
                height: 300,
                child: Placeholder(
                  child: Center(
                    child: Text(
                      'Images carrousel here...',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text('Naam: ${collection.name}'),
            Text('Tijdschrift: ${collection.magazine}'),
            Text('Uitvoering: ${collection.implementation}'),
            Text('Nummer: ${collection.implementationNumber}'),
            Text('Maten: ${collection.sizes.join(', ')}'),
            Row(
              children: [
                Text('Gemaakt?'),
                Checkbox(value: collection.finished, onChanged: null),
              ],
            ),
            Row(children: [Text('Rating:'), Rating(rating: collection.rating)]),
          ],
        ),
      ),
    );
  }
}
