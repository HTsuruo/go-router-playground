import 'package:flutter/material.dart';

class RectangleFilledLabel extends StatelessWidget {
  const RectangleFilledLabel({super.key, required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    return DecoratedBox(
      decoration: BoxDecoration(
        color: colorScheme.primary,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        child: Text(
          label,
          style: theme.textTheme.bodyLarge!.copyWith(
            color: colorScheme.onPrimary,
          ),
        ),
      ),
    );
  }
}
