import 'package:flutter/material.dart';

class ImageCard extends StatelessWidget {
  const ImageCard({super.key, required this.image, required this.text});

  final Image image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Image(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/yarn-ball.jpg'),
            ),
          ),
          Center(
            child: Container(padding: EdgeInsets.all(8), child: Text(text)),
          ),
        ],
      ),
    );
  }
}
