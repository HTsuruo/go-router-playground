import 'package:go_router/go_router.dart';
import 'package:go_router_playground/detail_page.dart';
import 'package:go_router_playground/home_page.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomePage(),
      routes: [
        GoRoute(
          path: 'detail',
          builder: (context, state) => const DetailPage(),
        ),
      ],
    ),
  ],
);
