import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_playground/detail_page.dart';
import 'package:go_router_playground/first_page.dart';
import 'package:go_router_playground/second_page.dart';
import 'package:go_router_playground/third_page.dart';

import 'logger.dart';
import 'navigation_bar_scaffold.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();

final router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  debugLogDiagnostics: kDebugMode,
  initialLocation: '/',
  routes: [
    ShellRoute(
      builder: (context, state, child) {
        logger.info('location: ${state.location}');
        return NavigationBarScaffold(state: state, child: child);
      },
      //
      // pageBuilder: (context, state, child) => _FadeTransitionRoute(
      //   child: NavigationBarScaffold(state: state, child: child),
      // ),
      routes: [
        GoRoute(
          path: '/',
          pageBuilder: (context, state) => const NoTransitionPage(
            child: FirstPage(),
          ),
        ),
        GoRoute(
          path: '/second',
          pageBuilder: (context, state) => const NoTransitionPage(
            child: SecondPage(),
          ),
        ),
        GoRoute(
          path: '/third',
          pageBuilder: (context, state) => const NoTransitionPage(
            child: ThirdPage(),
          ),
        ),
        GoRoute(
          path: '/detail',
          builder: (context, state) => const DetailPage(),
        ),
      ],
    ),
  ],
);

class _FadeTransitionRoute<T> extends CustomTransitionPage<T> {
  _FadeTransitionRoute({required super.child})
      : super(
          transitionsBuilder: (context, animation, _, child) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
        );
}
