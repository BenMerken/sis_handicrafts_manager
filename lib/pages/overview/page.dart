import 'package:flutter/material.dart';

class OverviewPage extends StatelessWidget {
  const OverviewPage({super.key, required this.title});

  static final _snackbar = SnackBar(content: Text('Coming soon!'));

  final String title;

  @override
  Widget build(BuildContext context) {
    void createNewCollection() {
      ScaffoldMessenger.of(context).showSnackBar(_snackbar);
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[const Text('Overview page...')],
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
