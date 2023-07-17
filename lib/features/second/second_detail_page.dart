import 'package:flutter/material.dart';
import 'package:go_router_playground/navigation/navigation_view.dart';

class SecondDetailPage extends StatelessWidget {
  const SecondDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const NavigationView(
      titleLabel: 'id',
      child: Text('Second Detail'),
    );
  }
}
