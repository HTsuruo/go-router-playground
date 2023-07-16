import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

enum _NavigationItem {
  first(iconData: Icons.home),
  second(iconData: Icons.settings),
  third(iconData: Icons.person),
  ;

  const _NavigationItem({required this.iconData});
  final IconData iconData;
  String get label => name.toUpperCase();

  static _NavigationItem getFromLocation(String location) =>
      _NavigationItem.values.firstWhere(
        (item) => location == '/${item.name}',
        orElse: () => _NavigationItem.first,
      );
}

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
      appBar: AppBar(
        title: const Text('Shell Route'),
      ),
      body: widget.child,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex:
            _NavigationItem.getFromLocation(widget.state.location).index,
        onTap: (index) {
          context
              .go(index == 0 ? '/' : '/${_NavigationItem.values[index].name}');
        },
        items: [
          for (final item in _NavigationItem.values)
            BottomNavigationBarItem(
              icon: Icon(item.iconData),
              label: item.label,
            ),
        ],
      ),
    );
  }
}
