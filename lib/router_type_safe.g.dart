// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'router_type_safe.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $shellRouteData,
    ];

RouteBase get $shellRouteData => StatefulShellRouteData.$route(
      factory: $ShellRouteDataExtension._fromState,
      branches: [
        StatefulShellBranchData.$branch(
          routes: [
            GoRouteData.$route(
              path: '/first',
              factory: $FirstPageRouteExtension._fromState,
              routes: [
                GoRouteData.$route(
                  path: 'detail',
                  factory: $FirstDetailPageRouteExtension._fromState,
                ),
              ],
            ),
          ],
        ),
        StatefulShellBranchData.$branch(
          routes: [
            GoRouteData.$route(
              path: '/second',
              factory: $SecondPageRouteExtension._fromState,
              routes: [
                GoRouteData.$route(
                  path: ':index',
                  factory: $SecondDetailPageRouteExtension._fromState,
                ),
              ],
            ),
          ],
        ),
        StatefulShellBranchData.$branch(
          routes: [
            GoRouteData.$route(
              path: '/third',
              factory: $ThirdPageRouteExtension._fromState,
            ),
          ],
        ),
      ],
    );

extension $ShellRouteDataExtension on ShellRouteData {
  static ShellRouteData _fromState(GoRouterState state) =>
      const ShellRouteData();
}

extension $FirstPageRouteExtension on FirstPageRoute {
  static FirstPageRoute _fromState(GoRouterState state) =>
      const FirstPageRoute();

  String get location => GoRouteData.$location(
        '/first',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $FirstDetailPageRouteExtension on FirstDetailPageRoute {
  static FirstDetailPageRoute _fromState(GoRouterState state) =>
      const FirstDetailPageRoute();

  String get location => GoRouteData.$location(
        '/first/detail',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $SecondPageRouteExtension on SecondPageRoute {
  static SecondPageRoute _fromState(GoRouterState state) => SecondPageRoute(
        tab: state.uri.queryParameters['tab'],
      );

  String get location => GoRouteData.$location(
        '/second',
        queryParams: {
          if (tab != null) 'tab': tab,
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $SecondDetailPageRouteExtension on SecondDetailPageRoute {
  static SecondDetailPageRoute _fromState(GoRouterState state) =>
      SecondDetailPageRoute(
        index: int.parse(state.pathParameters['index']!),
      );

  String get location => GoRouteData.$location(
        '/second/${Uri.encodeComponent(index.toString())}',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ThirdPageRouteExtension on ThirdPageRoute {
  static ThirdPageRoute _fromState(GoRouterState state) =>
      const ThirdPageRoute();

  String get location => GoRouteData.$location(
        '/third',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
