import 'package:flutter/material.dart';
import 'package:sis_handicrafts_manager/pages/collections/collection_listitem.dart';
import 'package:sis_handicrafts_manager/pages/collections/detail/page.dart';
import 'package:sis_handicrafts_manager/types/catalogue.dart';
import 'package:sis_handicrafts_manager/types/collection.dart';

class CollectionsPage extends StatefulWidget {
  const CollectionsPage({super.key, required this.catalogue});

  final Catalogue catalogue;

  @override
  State<CollectionsPage> createState() => _CollectionsPageState();
}

class _CollectionsPageState extends State<CollectionsPage> {
  // TODO: Change for data from firebase DB call.
  final List<Collection> _collections = <Collection>[
    Collection('abc', 'Winter collection 2025'),
    Collection('abc', 'Spring collection 2025'),
    Collection('abc', 'Summer collection 2025'),
    Collection('abc', 'Autumn collection 2025'),
  ];

  void _navigateToCollectionDetail(Collection collection) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => CollectionDetailPage(collection: collection),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    void createNewCollection() {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text('Coming soon!')));
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.catalogue.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: GridView.count(
          crossAxisCount: 3,
          padding: EdgeInsets.all(8.0),
          mainAxisSpacing: 20.0,
          crossAxisSpacing: 20.0,
          children: [
            for (var collection in _collections)
              InkWell(
                onTap: () => _navigateToCollectionDetail(collection),
                child: CollectionListItem(collection: collection),
              ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: createNewCollection,
        tooltip: 'Add a new collection',
        child: const Icon(Icons.add),
      ),
    );
  }
}
