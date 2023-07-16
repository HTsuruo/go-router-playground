import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'navigation_item.dart';

class NavigationBarScaffold extends StatefulWidget {
  const NavigationBarScaffold({
    super.key,
    required this.state,
    required this.child,
  });

  final GoRouterState state;
  final Widget child;

  @override
  State<NavigationBarScaffold> createState() => _NavigationBarScaffoldState();
}

class _NavigationBarScaffoldState extends State<NavigationBarScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.child,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex:
            NavigationItem.getFromLocation(widget.state.location).index,
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
