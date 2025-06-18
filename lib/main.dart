import 'package:flutter/material.dart';
import 'package:flutter_api_laravel/home_page.dart';
import 'package:flutter_api_laravel/theme/cubits/theme_cubit.dart';
import 'package:flutter_api_laravel/theme/repositories/theme_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp(themeRepository: ThemeRepository()));
}

class MyApp extends StatefulWidget {
  const MyApp({required ThemeRepository themeRepository, super.key})
    : _themeRepository = themeRepository;

  final ThemeRepository _themeRepository;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<ThemeRepository>(
          create: (context) => widget._themeRepository,
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (BuildContext context) =>
                ThemeCubit(themeRepository: widget._themeRepository)
                  ..getCurrentTheme(),
          ),
        ],
        child: BlocBuilder<ThemeCubit, ThemeState>(
          builder: (BuildContext context, ThemeState state) => MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData.light(useMaterial3: true),
            darkTheme: ThemeData.dark(useMaterial3: true),
            themeMode: state.themeMode,
            home: Scaffold(
              appBar: AppBar(
                actions: [
                  Switch(
                    value: state.themeMode == ThemeMode.dark,
                    onChanged: (_) async =>
                        context.read<ThemeCubit>().switchTheme(),
                  ),
                ],
              ),
              body: HomePage(),
            ),
          ),
        ),
      ),
    );
  }
}
