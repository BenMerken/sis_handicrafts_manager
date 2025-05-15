import 'package:flutter/material.dart';
import 'package:sis_handicrafts_manager/pages/catalogues/catalogue_listitem.dart';
import 'package:sis_handicrafts_manager/pages/collections/page.dart';
import 'package:sis_handicrafts_manager/types/catalogue.dart';

class CataloguesPage extends StatefulWidget {
  const CataloguesPage({super.key});

  @override
  State<CataloguesPage> createState() => _CataloguesPageState();
}

class _CataloguesPageState extends State<CataloguesPage> {
  // TODO: Change for data from firebase DB call.
  final List<Catalogue> _catalogues = <Catalogue>[
    Catalogue('abc', 'Knitting'),
    Catalogue('abc', 'Crochet'),
    Catalogue('abc', 'Embroidery'),
    Catalogue('abc', 'Knitting'),
    Catalogue('abc', 'Crochet'),
    Catalogue('abc', 'Embroidery'),
    Catalogue('abc', 'Knitting'),
    Catalogue('abc', 'Crochet'),
    Catalogue('abc', 'Embroidery'),
    Catalogue('abc', 'Knitting'),
    Catalogue('abc', 'Crochet'),
    Catalogue('abc', 'Embroidery'),
    Catalogue('abc', 'Knitting'),
    Catalogue('abc', 'Crochet'),
    Catalogue('abc', 'Embroidery'),
    Catalogue('abc', 'Knitting'),
    Catalogue('abc', 'Crochet'),
    Catalogue('abc', 'Embroidery'),
    Catalogue('abc', 'Knitting'),
    Catalogue('abc', 'Crochet'),
    Catalogue('abc', 'Embroidery'),
    Catalogue('abc', 'Knitting'),
    Catalogue('abc', 'Crochet'),
    Catalogue('abc', 'Embroidery'),
  ];

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
        title: Text('Catalogi'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: GridView.count(
          crossAxisCount: 3,
          padding: EdgeInsets.all(8.0),
          mainAxisSpacing: 20.0,
          crossAxisSpacing: 20.0,
          children: [
            for (var catalogue in _catalogues)
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder:
                          (context) => CollectionsPage(catalogue: catalogue),
                    ),
                  );
                },
                child: CatalogueListItem(catalogue: catalogue),
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
