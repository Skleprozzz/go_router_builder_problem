import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_builder_problem/features/home/presentation/home_page.dart';
import 'package:go_router_builder_problem/features/main/presentation/main_page.dart';
import 'package:go_router_builder_problem/features/profile/presentation/profile_page.dart';
import 'package:go_router_builder_problem/features/settings/presentation/settings_page.dart';

part 'home_routes.g.dart';

final mainNavigatorKey = GlobalKey<NavigatorState>();
final profileNavigatorKey = GlobalKey<NavigatorState>();

@TypedStatefulShellRoute<HomeRoute>(
  branches: [
    TypedStatefulShellBranch<MainBranch>(
      routes: [
        TypedGoRoute<MainRoute>(
          path: '/${MainRoute.name}',
          name: MainRoute.name,
          routes: [],
        ),
      ],
    ),
    TypedStatefulShellBranch<ProfileBranch>(
      routes: [
        TypedGoRoute<ProfileRoute>(
          path: '/${ProfileRoute.name}',
          name: ProfileRoute.name,
          routes: [
            TypedGoRoute<SettingsRoute>(
              path: SettingsRoute.name,
              name: SettingsRoute.name,
            ),
          ],
        ),
      ],
    ),
  ],
)
final class HomeRoute extends StatefulShellRouteData {
  @override
  Widget builder(
    BuildContext context,
    GoRouterState state,
    StatefulNavigationShell navigationShell,
  ) {
    return HomePage(shell: navigationShell);
  }
}

final class MainBranch extends StatefulShellBranchData {
  const MainBranch._();

  static final $navigatorKey = mainNavigatorKey;
}

final class ProfileBranch extends StatefulShellBranchData {
  const ProfileBranch._();

  static const $preload = true;

  static final $navigatorKey = profileNavigatorKey;
}
