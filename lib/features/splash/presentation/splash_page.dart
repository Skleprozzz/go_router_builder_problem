import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router_builder_problem/router/app_router_base.dart';
import 'package:go_router_builder_problem/features/main/presentation/main_page.dart';
import 'package:go_router_builder_problem/features/splash/presentation/bloc/splash_bloc.dart';

final class SplashRoute extends AppRouterBase {
  @override
  String get routeName => name;

  static const String name = 'splash';
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return BlocProvider(
      create: (context) => SplashBloc()..add(const SplashEvent.getConfig()),
      child: const SplashPage(),
    );
  }
}

final class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SplashBloc, SplashState>(
      listener: (context, state) {
        switch (state) {
          case SplashLoadedState():
            MainRoute().go(context);
          default:
        }
      },
      child: const Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [LinearProgressIndicator()],
          ),
        ),
      ),
    );
  }
}
