import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router_builder_problem/features/settings/presentation/settings_page.dart';
import 'package:go_router_builder_problem/router/app_router_base.dart';
import 'package:go_router_builder_problem/features/profile/presentation/bloc/profile_bloc.dart';

class ProfileRoute extends AppRouterBase {
  static const String name = 'profile';

  @override
  String get routeName => name;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return BlocProvider(
      create: (context) => ProfileBloc(),
      child: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<ProfileBloc, ProfileState>(
        builder: (context, state) {
          return Center(
            child: Column(
              children: [
                Text(state.toString()),
                ElevatedButton(
                  child: Text('Settings'),
                  onPressed: () => SettingsRoute().go(context),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
