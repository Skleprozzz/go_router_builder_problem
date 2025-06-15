// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'root_routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$rootRoutes];

RouteBase get $rootRoutes => GoRouteData.$route(
  path: '/root_routes',

  factory: $RootRoutesExtension._fromState,
  routes: [
    GoRouteData.$route(
      path: '/splash',
      name: 'splash',

      factory: $SplashRouteExtension._fromState,
    ),
  ],
);

extension $RootRoutesExtension on RootRoutes {
  static RootRoutes _fromState(GoRouterState state) => const RootRoutes();

  String get location => GoRouteData.$location('/root_routes');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $SplashRouteExtension on SplashRoute {
  static SplashRoute _fromState(GoRouterState state) => SplashRoute();

  String get location => GoRouteData.$location('/splash');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
