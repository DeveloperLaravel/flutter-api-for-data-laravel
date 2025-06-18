import 'package:flutter/material.dart';
import 'package:flutter_api_laravel/perstions/pages/list_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: ListPage());
  }
}
