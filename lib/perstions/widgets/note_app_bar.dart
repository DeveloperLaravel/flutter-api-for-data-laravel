import 'package:flutter/material.dart';

class NoteAppBar extends StatelessWidget {
  const NoteAppBar({super.key});
  @override
  Widget build(BuildContext context) {
    // final bloc = context.read<ThemeCubit>().switchTheme();
    return const SliverAppBar(
      backgroundColor: Colors.blueAccent,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.edit),
          SizedBox(width: 10.0),
          Text("Note Application"),
        ],
      ),
      floating: true,
    );
  }
}
