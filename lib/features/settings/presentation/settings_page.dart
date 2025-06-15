import 'package:flutter/material.dart';
import 'package:go_router_builder_problem/router/app_router_base.dart';

class SettingsRoute extends AppRouterBase {
  static const String name = 'settings';

  @override
  String get routeName => name;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return SettingsPage();
  }
}

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(child: Column(children: [Text('Settings')])),
    );
  }
}
