import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_playground/navigation/navigation_view.dart';
import 'package:intersperse/intersperse.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key, required this.detailPath});

  final String detailPath;

  @override
  Widget build(BuildContext context) {
    return NavigationView(
      titleLabel: 'ShellBranch Root - First',
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                context.push(detailPath);
              },
              child: const Text('context.push()'),
            ),
            ElevatedButton(
              onPressed: () {
                context.go(detailPath);
              },
              child: const Text('context.go()'),
            )
          ].intersperseOuter(const Gap(16)).toList(),
        ),
      ),
    );
  }
}
