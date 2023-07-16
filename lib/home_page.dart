import 'package:flutter/material.dart';

enum _NavigationItem {
  home(iconData: Icons.home),
  settings(iconData: Icons.settings),
  ;

  const _NavigationItem({required this.iconData});
  final IconData iconData;
  String get label => name.toUpperCase();
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _index = _NavigationItem.home.index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hello'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        onTap: (index) {
          setState(() {
            _index = index;
          });
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
