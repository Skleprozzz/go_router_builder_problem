import 'dart:async';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_builder_problem/components/overlays/loading_overlay.dart';
import 'package:meta/meta.dart';

export 'package:go_router/go_router.dart';

abstract class AppRouterBase extends GoRouteData {
  const AppRouterBase();

  @mustBeOverridden
  String get routeName => '';

  String get path => '/$routeName';

  // GoRoute goRoute({List<RouteBase> routes = const []}) =>
  //     _route(routes: routes, name: routeName, path: path);

  @override
  FutureOr<bool> onExit(BuildContext context, GoRouterState state) {
    return !LoadingOverlay.isOverlayShown;
  }

  // GoRoute _route({
  //   required String path,
  //   required String name,
  //   List<RouteBase> routes = const [],
  // }) =>
  //     GoRoute(
  //       path: path,
  //       name: name,
  //       builder: build,
  //       redirect: redirect,
  //       pageBuilder: buildPage,
  //       onExit: onExit,
  //       routes: routes,
  //     );
}

abstract class AppRouterFadeTransitionBase extends AppRouterBase {
  const AppRouterFadeTransitionBase();

  @override
  @mustBeOverridden
  String get routeName => '';

  @override
  Page<dynamic> buildPage(BuildContext context, GoRouterState state) {
    return CustomTransitionPage(
      key: state.pageKey,
      child: build(context, state),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return FadeTransition(opacity: animation, child: build(context, state));
      },
    );
  }
}
