import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_playground/features/second/second_detail_page.dart';
import 'package:go_router_playground/features/second/second_page.dart';
import 'package:go_router_playground/features/third_page.dart';

import 'features/first/first_page.dart';

// part 'router_type_safe.g.dart';

// StatefulShellRouteのbuilderは未対応ぽい
// @TypedStatefulShellRoute(
//   branches: [
//     firstBranch,
//     secondBranch,
//     thirdBranch,
//   ],
// )

// **************************************************************************
// First Page
// **************************************************************************
const firstBranch = TypedStatefulShellBranch(
  routes: [
    TypedGoRoute<FirstPageRoute>(
      path: '/first',
      routes: [
        TypedGoRoute<SecondDetailPageRoute>(
          path: 'detail',
        )
      ],
    )
  ],
);

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
    return const FirstPage(detailPath: '/first/detail');
  }
}

// **************************************************************************
// Second Page
// **************************************************************************
const secondBranch = TypedStatefulShellBranch(
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
);

@immutable
class SecondPageRoute extends GoRouteData {
  const SecondPageRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const SecondPage();
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

// **************************************************************************
// Third Page
// **************************************************************************
const thirdBranch = TypedStatefulShellBranch(
  routes: [
    TypedGoRoute<ThirdPageRoute>(
      path: '/third',
    )
  ],
);

@immutable
class ThirdPageRoute extends GoRouteData {
  const ThirdPageRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const ThirdPage();
  }
}
