import 'package:flutter/widgets.dart';
import 'package:go_router_builder_problem/router/app_router_base.dart';
import 'package:go_router_builder_problem/features/splash/presentation/splash_page.dart';

part 'root_routes.g.dart';

@TypedGoRoute<RootRoutes>(
  path: '/${RootRoutes.name}',
  routes: [
    TypedGoRoute<SplashRoute>(
      path: '/${SplashRoute.name}',
      name: SplashRoute.name,
    ),
  ],
)
final class RootRoutes extends AppRouterBase {
  const RootRoutes();

  static const String name = 'root_routes';

  @override
  String get routeName => name;
}
