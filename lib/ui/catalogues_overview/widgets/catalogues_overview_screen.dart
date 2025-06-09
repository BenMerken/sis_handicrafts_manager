import 'package:flutter/material.dart';
import 'package:sis_handicrafts_manager/ui/catalogues_overview/widgets/catalogue_listitem.dart';
import 'package:sis_handicrafts_manager/ui/collections_overview/widgets/collections_overview_screen.dart';
import 'package:sis_handicrafts_manager/domain/models/catalogue/catalogue.dart';

class CataloguesOverviewScreen extends StatefulWidget {
  const CataloguesOverviewScreen({super.key});

  @override
  State<CataloguesOverviewScreen> createState() =>
      _CataloguesOverviewScreenState();
}

class _CataloguesOverviewScreenState extends State<CataloguesOverviewScreen> {
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

  void _onCatalogueTapped(Catalogue catalogue) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => CollectionsOverviewScreen(catalogue: catalogue),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    void createNewCatalogue() {
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
          crossAxisCount: 2,
          padding: EdgeInsets.all(8.0),
          mainAxisSpacing: 20.0,
          crossAxisSpacing: 20.0,
          children: [
            for (var catalogue in _catalogues)
              InkWell(
                onTap: () => _onCatalogueTapped(catalogue),
                child: CatalogueListItem(catalogue: catalogue),
              ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: createNewCatalogue,
        tooltip: 'Nieuwe catalogus aanmaken',
        child: const Icon(Icons.add),
      ),
    );
  }
}
