import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_builder_problem/core/router/typed_router/home_routes.dart';
import 'package:go_router_builder_problem/core/router/typed_router/root_routes.dart';
import 'package:go_router_builder_problem/features/main/presentation/main_page.dart';
import 'package:go_router_builder_problem/features/splash/presentation/splash_page.dart';


final rootNavigatorKey = GlobalKey<NavigatorState>();

BuildContext? get rootContext => rootNavigatorKey.currentContext;

final GoRouter goRouter = GoRouter(
  navigatorKey: rootNavigatorKey,
  initialLocation: SplashRoute().path,
  debugLogDiagnostics: kDebugMode,
  observers: [],
  routes: [
    GoRoute(path: '/', redirect: (_, __) => '/${MainRoute.name}'),
    ...$rootRoutes.routes,
    $homeRoute,

  ],
);
