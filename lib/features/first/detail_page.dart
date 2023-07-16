import 'package:flutter/material.dart';
import 'package:go_router_playground/navigation/navigation_view.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const NavigationView(
      titleLabel: 'Detail',
      child: Center(
        child: Text('Detail'),
      ),
    );
  }
}
