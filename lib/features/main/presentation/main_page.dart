import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router_builder_problem/router/app_router_base.dart';
import 'package:go_router_builder_problem/features/main/presentation/bloc/main_bloc.dart';

class MainRoute extends AppRouterBase {
  static const String name = 'main';

  @override
  String get routeName => name;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return BlocProvider(
      create: (context) => MainBloc(),
      child: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<MainBloc, MainState>(
        builder: (context, state) {
          return Center(
            child: Column(
              children: [Text(state.toString())],
            ),
          );
        },
      ),
    );
  }
}
