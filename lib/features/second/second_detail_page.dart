import 'package:flutter/material.dart';
import 'package:go_router_playground/navigation/navigation_view.dart';

class SecondDetailPage extends StatelessWidget {
  const SecondDetailPage({super.key, required this.index});

  final int? index;

  @override
  Widget build(BuildContext context) {
    return NavigationView(
      titleLabel: 'Second Detail',
      child: Center(
        child: Text('index: $index'),
      ),
    );
  }
}
