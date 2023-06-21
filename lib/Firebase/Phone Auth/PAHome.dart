import 'package:flutter/material.dart';

class PAHome extends StatefulWidget {
  const PAHome({Key? key}) : super(key: key);

  @override
  State<PAHome> createState() => _PAHomeState();
}

class _PAHomeState extends State<PAHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
    );
  }
}
