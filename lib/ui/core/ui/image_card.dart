import 'package:flutter/material.dart';

class ImageCard extends StatelessWidget {
  const ImageCard({super.key, required this.image, required this.text});

  final Image image;
  final String text;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Card(
      elevation: 5,
      color: theme.cardColor,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Image(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/yarn-ball.jpg'),
            ),
          ),
          Container(
            padding: EdgeInsets.all(8),
            child: Text(
              text,
              style: TextStyle(color: theme.colorScheme.onSurface),
            ),
          ),
        ],
      ),
    );
  }
}
