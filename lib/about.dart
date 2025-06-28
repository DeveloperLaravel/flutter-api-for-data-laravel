import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_api_laravel/cart.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  void initState() {
    super.initState();
    getData();
  }

  // List users = [];
  List<Cart> users = [];

  Future<void> getData() async {
    try {
      var response = await Dio().get("http://127.0.0.1:8000/api/home");
      List<dynamic> jsonData = response.data;
      setState(() {
        // users = response.data;
        users = jsonData.map((user) => Cart.fromJson(user)).toList();
      });
    } catch (e) {
      print('No Data');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Flutter Api with Clinside Api For Laravel php'),
      ),
      body: GridView.builder(
        itemCount: users.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          final ss = users[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Material(
              elevation: 5,
              borderRadius: BorderRadius.circular(20),
              child: Column(
                children: [
                  Text(ss.title.toString()),
                  Text(users[index].content.toString()),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
