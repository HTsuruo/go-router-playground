import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_playground/features/first/first_detail_page.dart';
import 'package:go_router_playground/features/second/second_detail_page.dart';
import 'package:go_router_playground/features/second/second_type_safe_page.dart';
import 'package:go_router_playground/features/third_page.dart';

import 'features/first/first_page.dart';
import 'features/second/tab_item.dart';
import 'navigation/scaffold_with_navigation.dart';

part 'router_type_safe.g.dart';

final router = GoRouter(
  routes: $appRoutes,
  debugLogDiagnostics: kDebugMode,
  initialLocation: '/first',
);

// example: https://github.com/flutter/packages/blob/main/packages/go_router_builder/example/lib/stateful_shell_route_example.dart
@TypedStatefulShellRoute<ShellRouteData>(
  branches: [
    TypedStatefulShellBranch(
      routes: [
        TypedGoRoute<FirstPageRoute>(
          path: '/first',
          routes: [
            TypedGoRoute<FirstDetailPageRoute>(
              path: 'detail',
            )
          ],
        )
      ],
    ),
    TypedStatefulShellBranch(
      routes: [
        TypedGoRoute<SecondPageRoute>(
          path: '/second',
          routes: [
            TypedGoRoute<SecondDetailPageRoute>(
              path: ':index',
            )
          ],
        )
      ],
    ),
    TypedStatefulShellBranch(
      routes: [
        TypedGoRoute<ThirdPageRoute>(
          path: '/third',
        )
      ],
    ),
  ],
)
class ShellRouteData extends StatefulShellRouteData {
  const ShellRouteData();

  @override
  Widget builder(
    BuildContext context,
    GoRouterState state,
    StatefulNavigationShell navigationShell,
  ) {
    return ScaffoldWithNavigation(
      navigationShell: navigationShell,
    );
  }
}

// First Page
@immutable
class FirstPageRoute extends GoRouteData {
  const FirstPageRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const FirstPage(detailPath: '/first/detail');
  }
}

@immutable
class FirstDetailPageRoute extends GoRouteData {
  const FirstDetailPageRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const FirstDetailPage();
  }
}

// Second Page
class SecondPageRoute extends GoRouteData {
  const SecondPageRoute({this.tab});

  final String? tab;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    final selectedTab = switch (tab) {
      'a' => TabItem.secondA,
      'b' => TabItem.secondB,
      _ => TabItem.secondA,
    };
    return SecondTypeSafePage(tabItem: selectedTab);
  }
}

@immutable
class SecondDetailPageRoute extends GoRouteData {
  const SecondDetailPageRoute({required this.index});

  final int index;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return SecondDetailPage(index: index);
  }
}

// Third Page
@immutable
class ThirdPageRoute extends GoRouteData {
  const ThirdPageRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const ThirdPage();
  }
}
