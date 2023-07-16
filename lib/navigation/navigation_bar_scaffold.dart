import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'navigation_item.dart';

class NavigationBarScaffold extends StatefulWidget {
  const NavigationBarScaffold({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  State<NavigationBarScaffold> createState() => _NavigationBarScaffoldState();
}

class _NavigationBarScaffoldState extends State<NavigationBarScaffold> {
  @override
  Widget build(BuildContext context) {
    final location = GoRouterState.of(context).location;
    return Scaffold(
      body: widget.child,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: NavigationItem.getFromLocation(location).index,
        onTap: (index) {
          context.go(NavigationItem.values[index].location);
        },
        items: [
          for (final item in NavigationItem.values)
            BottomNavigationBarItem(
              icon: Icon(item.iconData),
              label: item.label,
            ),
        ],
      ),
    );
  }
}
