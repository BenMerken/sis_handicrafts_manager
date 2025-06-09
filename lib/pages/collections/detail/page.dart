import 'package:flutter/material.dart';
import 'package:sis_handicrafts_manager/components/rating.dart';
import 'package:sis_handicrafts_manager/pages/collections/detail/edit_collection_form.dart';
import 'package:sis_handicrafts_manager/domain/models/collection/collection.dart';

class CollectionDetailPage extends StatefulWidget {
  const CollectionDetailPage({super.key, required this.collection});

  final Collection collection;

  @override
  State<CollectionDetailPage> createState() => _CollectionDetailPageState();
}

class _CollectionDetailPageState extends State<CollectionDetailPage> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final collection = widget.collection;

    void onEditButtonTapped() {
      showModalBottomSheet(
        context: context,
        isDismissible: false,
        isScrollControlled: true,
        builder: (buildContext) {
          return EditCollectionForm(
            collection: collection,
            onCancel: () {
              Navigator.pop(context);
            },
          );
        },
      );
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.colorScheme.inversePrimary,
        title: Text(collection.name),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            color: theme.colorScheme.primaryContainer,
            child: Center(
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
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
                Row(
                  children: [
                    Text('Rating:'),
                    Rating(rating: collection.rating),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: onEditButtonTapped,
        tooltip: 'Collectie aanpassen',
        child: const Icon(Icons.edit),
      ),
    );
  }
}
