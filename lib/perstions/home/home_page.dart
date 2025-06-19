import 'package:flutter/material.dart';
import 'package:flutter_api_laravel/perstions/home/widgets/app_icon_button.dart';
import 'package:flutter_api_laravel/perstions/home/widgets/note_app_bar.dart';
import 'package:flutter_api_laravel/perstions/home/widgets/note_grid.dart';
import 'package:flutter_api_laravel/theme/cubits/theme_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
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
                onPressed: () => context.read<ThemeCubit>().switchTheme(),

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
