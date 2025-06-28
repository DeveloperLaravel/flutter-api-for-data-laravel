import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  List users = [];
  Future<void> getData() async {
    const String apiUrl = "http://127.0.0.1:8000/api/home";
    try {
      Response response = await Dio().get(apiUrl);
      setState(() {
        users = response.data;
      });
    } catch (e) {
      print('No Data');
    }
  }

  // @override
  // void initState() {
  //   super.initState();
  //   getData();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Flutter Api with Clinside Api For Laravel php'),
      ),
      body: GridView.builder(
        itemCount: 6,
        //users.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          // final ss = users[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Material(
              elevation: 5,
              borderRadius: BorderRadius.circular(20),
              child: Column(
                children: [Text('ss[title]'), Text('users[index][content]')],
              ),
            ),
          );
        },
      ),
    );
  }
}
