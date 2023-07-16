import 'package:flutter/foundation.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_playground/features/second/second_page.dart';
import 'package:go_router_playground/features/third_page.dart';

import 'features/first/detail_page.dart';
import 'features/first/first_page.dart';
import 'navigation/navigation_bar_scaffold.dart';

final router = GoRouter(
  debugLogDiagnostics: kDebugMode,
  initialLocation: '/',
  routes: [
    ShellRoute(
      builder: (context, state, child) => NavigationBarScaffold(child: child),
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
          routes: [
            GoRoute(
              path: 'detail',
              builder: (context, state) => const DetailPage(),
            ),
          ],
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
      ],
    ),
  ],
);

// class _FadeTransitionRoute<T> extends CustomTransitionPage<T> {
//   _FadeTransitionRoute({required super.child})
//       : super(
//           transitionsBuilder: (context, animation, _, child) {
//             return FadeTransition(
//               opacity: animation,
//               child: child,
//             );
//           },
//         );
// }
