import 'package:flutter/material.dart';
import 'package:sis_handicrafts_manager/pages/catalogues/catalogue_listitem.dart';
import 'package:sis_handicrafts_manager/types/catalogue.dart';

class OverviewPage extends StatefulWidget {
  const OverviewPage({super.key, required this.title});

  final String title;

  @override
  State<OverviewPage> createState() => _OverviewPageState();
}

class _OverviewPageState extends State<OverviewPage> {
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
        title: Text(widget.title),
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
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Tapped item ${catalogue.name}')),
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
