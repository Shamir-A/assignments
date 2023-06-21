import 'package:assignments/Tourism%20UI%201/placeData.dart';
import 'package:assignments/Tourism%20UI%201/placeList.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => MaterialApp(
        theme: ThemeData(primarySwatch: Colors.grey),
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
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        title: const Text("Place Home"),
      ),
      body: ListView(
           padding: const EdgeInsets.only(top: 8.0),
          children: placeData.map((image) {
            return TextButton(
                onPressed: () => gotoNext(context, image["id"]),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Stack(
                      alignment: AlignmentDirectional.bottomStart,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            "${image["image"]}",
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("${image["place"]}",
                              style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                        ),
                      ],
                    ),
                  ),
                );
          }).toList()),
    );
  }

  void gotoNext(BuildContext context, place) {
    Navigator.of(context).pushNamed("secondpage", arguments: place);
  }
}
