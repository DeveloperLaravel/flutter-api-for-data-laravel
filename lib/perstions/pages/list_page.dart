import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key});
  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    // final clob = context.read<ThemeCubit>().switchTheme();
    return Scaffold(body: Center(child: Text('data')));
  }
}
