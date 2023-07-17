import 'package:flutter/material.dart';
import 'package:go_router_playground/navigation/navigation_view.dart';

import '../widgets/rectangle_filled_label.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const NavigationView(
      titleLabel: 'ShellBranch Root - Third',
      child: Center(
        child: RectangleFilledLabel(label: 'Third Page'),
      ),
    );
  }
}
