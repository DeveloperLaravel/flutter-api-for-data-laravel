import 'package:flutter/material.dart';
import 'package:flutter_api_laravel/about.dart';
import 'package:flutter_api_laravel/cubits/theme_cubit.dart';
import 'package:flutter_api_laravel/repositories/theme_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(
    HomeScreen(),
    //themeRepository: ThemeRepository()
  );
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: const About(),
    );
  }
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
            home: Scaffold(body: About()),
          ),
        ),
      ),
    );
  }
}
