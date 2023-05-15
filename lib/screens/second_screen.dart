import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  String geoName;
  String catName;
  SecondScreen({Key? key, required this.geoName, required this.catName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Column(children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              geoName,
              style: TextStyle(fontSize: 20),
            ),
          ),
          Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Text(
                  catName,
                  style: TextStyle(fontSize: 15),
                ),
              )),
        ]),
      ),
    );
  }
}
