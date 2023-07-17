import 'package:flutter/material.dart';
import 'package:go_router_playground/navigation/navigation_view.dart';
import 'package:go_router_playground/widgets/rectangle_filled_label.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const NavigationView(
      titleLabel: 'ShellBranch Root - Second',
      child: Center(
        child: RectangleFilledLabel(label: 'Second Page'),
      ),
    );
  }
}
