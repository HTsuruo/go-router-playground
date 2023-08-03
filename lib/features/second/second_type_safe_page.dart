import 'package:flutter/material.dart';
import 'package:go_router_playground/features/second/tab_item.dart';
import 'package:go_router_playground/navigation/navigation_view.dart';
import 'package:go_router_playground/router_type_safe.dart';
import 'package:recase/recase.dart';

// go_router_builder用の画面
// 型付きのパラメータを受け取ることができる
class SecondTypeSafePage extends StatelessWidget {
  const SecondTypeSafePage({super.key, required this.tabItem});

  final TabItem tabItem;

  @override
  Widget build(BuildContext context) {
    final tabs = [
      for (final item in TabItem.values) Tab(text: item.name.pascalCase),
    ];

    return NavigationView(
      titleLabel: 'ShellBranch Root - Second',
      child: DefaultTabController(
        initialIndex: tabItem.index,
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
      key: const ValueKey('SecondPageWithParamListView'),
      itemCount: 50,
      itemBuilder: (context, index) => ListTile(
        title: Text('index: $index'),
        visualDensity: VisualDensity.comfortable,
        trailing: RotatedBox(
          quarterTurns: 2,
          child: BackButton(color: colorScheme.primary),
        ),
        onTap: () {
          // go_router_builderを使う場合
          SecondDetailPageRoute(index: index).go(context);
        },
      ),
      separatorBuilder: (context, _) => const Divider(),
    );
  }
}
