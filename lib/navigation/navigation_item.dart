import 'package:flutter/material.dart';
import 'package:recase/recase.dart';

enum NavigationItem {
  first(iconData: Icons.home),
  second(iconData: Icons.settings),
  third(iconData: Icons.person),
  ;

  const NavigationItem({required this.iconData});
  final IconData iconData;
  String get label => name.pascalCase;
  String get location => index == 0 ? '/' : '/$name';

  static NavigationItem getFromLocation(String location) =>
      NavigationItem.values.firstWhere(
        (item) => location == '/${item.name}',
        orElse: () => NavigationItem.first,
      );
}
