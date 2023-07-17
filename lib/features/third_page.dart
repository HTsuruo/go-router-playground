import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router_playground/navigation/navigation_view.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({super.key});

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  late Timer timer;
  var _tick = 0;

  @override
  void initState() {
    super.initState();
    // StatefulShellRouteではindexedされているだけなので、画面表示されていなくともタイマーは動き続ける
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        _tick = timer.tick;
        if (_tick >= 30) {
          timer.cancel();
        }
      });
    });
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return NavigationView(
      titleLabel: 'ShellBranch Root - Third',
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Timer: $_tick',
              style: theme.textTheme.bodyLarge,
            ),
            TextButton(
              onPressed: () {
                timer.cancel();
              },
              child: const Text('Cancel'),
            )
          ],
        ),
      ),
    );
  }
}
