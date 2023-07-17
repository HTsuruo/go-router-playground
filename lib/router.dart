import 'package:flutter/foundation.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_playground/features/second/second_detail_page.dart';
import 'package:go_router_playground/features/second/second_page.dart';
import 'package:go_router_playground/features/third_page.dart';

import 'features/first/first_detail_page.dart';
import 'features/first/first_page.dart';
import 'navigation/scaffold_with_navigation.dart';

final router = GoRouter(
  debugLogDiagnostics: kDebugMode,
  initialLocation: '/first',
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) => ScaffoldWithNavigation(
        navigationShell: navigationShell,
      ),
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/first',
              pageBuilder: (context, state) => const NoTransitionPage(
                child: FirstPage(
                  detailPath: '/first/detail',
                ),
              ),
              routes: [
                GoRoute(
                  path: 'detail',
                  builder: (context, state) => const FirstDetailPage(),
                ),
              ],
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/second',
              pageBuilder: (context, state) => const NoTransitionPage(
                child: SecondPage(),
              ),
              routes: [
                GoRoute(
                  path: ':index',
                  builder: (context, state) => SecondDetailPage(
                    index: int.tryParse(state.pathParameters['index']!),
                  ),
                ),
              ],
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/third',
              pageBuilder: (context, state) => const NoTransitionPage(
                child: ThirdPage(),
              ),
            ),
          ],
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
