import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_playground/navigation/navigation_view.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key, required this.detailPath});

  final String detailPath;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return NavigationView(
      titleLabel: 'ShellBranch Root - Second',
      child: ListView.separated(
        itemCount: 50,
        itemBuilder: (context, index) => ListTile(
          title: Text('index: $index'),
          visualDensity: VisualDensity.comfortable,
          trailing: RotatedBox(
            quarterTurns: 2,
            child: BackButton(color: colorScheme.primary),
          ),
          onTap: () {
            context.go(detailPath);
          },
        ),
        separatorBuilder: (context, _) => const Divider(),
      ),
    );
  }
}
