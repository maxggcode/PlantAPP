import 'package:flutter/material.dart';

class Greenhouse extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Greenhousestate();
  }
}

class Greenhousestate extends State<Greenhouse> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('溫室'),
        backgroundColor: Colors.grey,
      ),
    );
  }
}