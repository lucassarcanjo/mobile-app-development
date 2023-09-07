import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:login/src/router/nested_navigation.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorAKey = GlobalKey<NavigatorState>(debugLabel: 'Shell A');
final _shellNavigatorBKey = GlobalKey<NavigatorState>(debugLabel: 'Shell B');

final router =
    GoRouter(initialLocation: '/a', navigatorKey: _rootNavigatorKey, routes: [
  // Stateful nested navigation
  StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return ScaffoldWithNestedNavigation(navigationShell: navigationShell);
      },
      branches: [
        StatefulShellBranch(navigatorKey: _shellNavigatorAKey, routes: [
          GoRoute(
              path: '/a',
              pageBuilder: (context, state) =>
                  const NoTransitionPage(child: Text("Page A")),
              routes: [
                GoRoute(
                    path: 'details',
                    builder: (context, state) => const Text("Details A"))
              ])
        ]),
        StatefulShellBranch(navigatorKey: _shellNavigatorBKey, routes: [
          GoRoute(
              path: '/b',
              pageBuilder: (context, state) =>
                  const NoTransitionPage(child: Text("Page B"))),
        ])
      ])
]);
