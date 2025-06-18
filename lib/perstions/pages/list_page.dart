import 'package:flutter/material.dart';
import 'package:flutter_api_laravel/perstions/widgets/app_icon_button.dart';
import 'package:flutter_api_laravel/perstions/widgets/note_app_bar.dart';
import 'package:flutter_api_laravel/perstions/widgets/note_grid.dart';
import 'package:flutter_api_laravel/theme/cubits/theme_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key});
  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    // final clob = context.read<ThemeCubit>().switchTheme();
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 6.0,
        child: SizedBox(
          height: 50.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              AppIconButton(
                onPressed: () {},
                icon: Icons.table_chart_outlined,
                tooltip: '',
              ),

              IconButton(
                onPressed: () {
                  // return clob.n;
                },
                icon: Icon(Icons.brightness_4),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Theme.of(context).primaryColor,
        child: const Icon(Icons.add, color: Colors.white),
      ),

      body: const CustomScrollView(
        slivers: [
          NoteAppBar(),
          SliverPadding(padding: EdgeInsets.all(10.0)),
          NoteGrid(notes: []),
        ],
      ),
    );
  }
}
