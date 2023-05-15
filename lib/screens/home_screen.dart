import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:quotesapp/screens/second_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late String title = "klays";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text(title)),
        body: Column(
          children: [
            ElevatedButton(
              onPressed: () async {
                setState(() {
                  title = "Apply";
                });
                // var url =
                //     Uri.parse('https://olean-backend.onrender.com/api/category/');
                // var response = await http.get(url);
                // //print('Response status: ${response.statusCode}');
                // //print('Response body: ${response.body}');
                // var data = jsonDecode(response.body);
                // String geology = data['categories'][0]['name'];
                // String cat = data['categories'][1]['name'];

                // // ignore: use_build_context_synchronously
                // Navigator.of(context).push(MaterialPageRoute(
                //     builder: (context) =>
                //         SecondScreen(geoName: geology, catName: cat)));
              },
              child: const Text("Get Quote"),
            ),
          ],
        ),
      ),
    );
  }
}
