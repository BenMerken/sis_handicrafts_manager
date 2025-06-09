import 'package:flutter/material.dart';

class Rating extends StatelessWidget {
  const Rating({super.key, required this.rating});

  final int starCount = 5;

  final double rating;

  Widget _buildStar(final BuildContext context, final int index) {
    final theme = Theme.of(context);

    Icon icon;

    if (index >= rating) {
      icon = const Icon(Icons.star_border);
    } else if (index > rating - 1 && index < rating) {
      icon = Icon(Icons.star_half, color: theme.primaryColor);
    } else {
      icon = Icon(Icons.star, color: theme.primaryColor);
    }

    return icon;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ...List.generate(
          starCount,
          (final index) => _buildStar(context, index),
        ),
        Text(rating.toStringAsPrecision(2)),
      ],
    );
  }
}
