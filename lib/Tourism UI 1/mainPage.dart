import 'package:assignments/Tourism%20UI%201/placeData.dart';
import 'package:assignments/Tourism%20UI%201/placeList.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(builder: (BuildContext context) =>
      MaterialApp(
        useInheritedMediaQuery: true,
        home: placeMain(),
        debugShowCheckedModeBanner: false,
        routes: {
          "secondpage": (context) => placeList(),
        },
      )));
}

class placeMain extends StatelessWidget {
  const placeMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // var image = [
    //   "assets/images/new york.jpg",
    //   "assets/images/dubai.jpg",
    //   "assets/images/paris.jpg",
    //   "assets/images/tokiyo.jpg",
    // ];
    return Scaffold(
      appBar: AppBar(
        title: const Text("Place Home"),
      ),
      body: ListView(
          padding: const EdgeInsets.all(15),
          children: placeData.map((image) {
            return TextButton(
                onPressed: () => gotoNext(context, image["id"]),
                child: Text("${image["place"]}",style: TextStyle(fontSize: 20), ));
          }).toList()
      ),
    );
  }
  void gotoNext(BuildContext context, place){
    Navigator.of(context).pushNamed("secondpage", arguments: place);
  }
}
