// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$homeRoute];

RouteBase get $homeRoute => StatefulShellRouteData.$route(
  factory: $HomeRouteExtension._fromState,
  branches: [
    StatefulShellBranchData.$branch(
      navigatorKey: MainBranch.$navigatorKey,

      routes: [
        GoRouteData.$route(
          path: '/main',
          name: 'main',

          factory: $MainRouteExtension._fromState,
        ),
      ],
    ),
    StatefulShellBranchData.$branch(
      navigatorKey: ProfileBranch.$navigatorKey,
      preload: ProfileBranch.$preload,

      routes: [
        GoRouteData.$route(
          path: '/profile',
          name: 'profile',

          factory: $ProfileRouteExtension._fromState,
          routes: [
            GoRouteData.$route(
              path: 'settings',
              name: 'settings',

              factory: $SettingsRouteExtension._fromState,
            ),
          ],
        ),
      ],
    ),
  ],
);

extension $HomeRouteExtension on HomeRoute {
  static HomeRoute _fromState(GoRouterState state) => HomeRoute();
}

extension $MainRouteExtension on MainRoute {
  static MainRoute _fromState(GoRouterState state) => MainRoute();

  String get location => GoRouteData.$location('/main');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ProfileRouteExtension on ProfileRoute {
  static ProfileRoute _fromState(GoRouterState state) => ProfileRoute();

  String get location => GoRouteData.$location('/profile');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $SettingsRouteExtension on SettingsRoute {
  static SettingsRoute _fromState(GoRouterState state) => SettingsRoute();

  String get location => GoRouteData.$location('/profile/settings');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
