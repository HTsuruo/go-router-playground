import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'navigation_item.dart';

class ScaffoldWithNavBar extends StatelessWidget {
  const ScaffoldWithNavBar({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final location = GoRouterState.of(context).location;
    return Scaffold(
      body: child,
      bottomNavigationBar: NavigationBar(
        selectedIndex: NavigationItem.getFromLocation(location).index,
        onDestinationSelected: (index) {
          context.go(NavigationItem.values[index].location);
        },
        destinations: [
          for (final item in NavigationItem.values)
            NavigationDestination(
              icon: Icon(item.iconData),
              label: item.label,
            ),
        ],
      ),
    );
  }
}
