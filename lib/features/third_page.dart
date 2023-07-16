import 'package:flutter/material.dart';
import 'package:go_router_playground/navigation/navigation_view.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const NavigationView(
      titleLabel: 'Third',
      child: Center(
        child: Text('Third Page'),
      ),
    );
  }
}
