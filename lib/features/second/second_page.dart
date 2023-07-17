import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_playground/features/second/tab_item.dart';
import 'package:go_router_playground/navigation/navigation_view.dart';
import 'package:recase/recase.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    final tabs = [
      for (final item in TabItem.values) Tab(text: item.name.pascalCase),
    ];

    return NavigationView(
      titleLabel: 'ShellBranch Root - Second',
      child: DefaultTabController(
        length: tabs.length,
        child: Column(
          children: [
            TabBar(tabs: tabs),
            Expanded(
              child: TabBarView(
                children: [
                  const _ListView(),
                  Center(
                    child: Text(TabItem.secondB.name),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _ListView extends StatelessWidget {
  const _ListView();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return ListView.separated(
      key: const ValueKey('SecondPageListView'),
      itemCount: 50,
      itemBuilder: (context, index) => ListTile(
        title: Text('index: $index'),
        visualDensity: VisualDensity.comfortable,
        trailing: RotatedBox(
          quarterTurns: 2,
          child: BackButton(color: colorScheme.primary),
        ),
        onTap: () {
          context.go('/second/$index');
        },
      ),
      separatorBuilder: (context, _) => const Divider(),
    );
  }
}
