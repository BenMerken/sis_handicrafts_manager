import 'package:flutter/material.dart';
import 'package:sis_handicrafts_manager/ui/collections_overview/widgets/collection_listitem.dart';
import 'package:sis_handicrafts_manager/ui/collection_detail/widgets/collection_detail_screen.dart';
import 'package:sis_handicrafts_manager/domain/models/catalogue/catalogue.dart';
import 'package:sis_handicrafts_manager/domain/models/collection/collection.dart';

class CollectionsOverviewScreen extends StatefulWidget {
  const CollectionsOverviewScreen({super.key, required this.catalogue});

  final Catalogue catalogue;

  @override
  State<CollectionsOverviewScreen> createState() =>
      _CollectionsOverviewScreenState();
}

class _CollectionsOverviewScreenState extends State<CollectionsOverviewScreen> {
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
        builder: (context) => CollectionDetailScreen(collection: collection),
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
          crossAxisCount: 2,
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
