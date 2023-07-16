import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_playground/detail_page.dart';
import 'package:go_router_playground/first_page.dart';
import 'package:go_router_playground/navigation_bar_scaffold.dart';
import 'package:go_router_playground/second_page.dart';
import 'package:go_router_playground/third_page.dart';

import 'logger.dart';

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
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => const FirstPage(),
        ),
        GoRoute(
          path: '/second',
          builder: (context, state) => const SecondPage(),
        ),
        GoRoute(
          path: '/third',
          builder: (context, state) => const ThirdPage(),
        ),
        GoRoute(
          path: '/detail',
          builder: (context, state) => const DetailPage(),
        ),
      ],
    )
  ],
);
