import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => MaterialApp(
            useInheritedMediaQuery: true,
            home: gridWithCard(),
            debugShowCheckedModeBanner: false,
          )));
}

class gridWithCard extends StatelessWidget {
  var icons = [
    "assets/icons/apps.png",
    "assets/icons/building.png",
    "assets/icons/calendar-lines.png",
    "assets/icons/diploma.png",
    "assets/icons/globe.png",
    "assets/icons/home.png",
    "assets/icons/phone-call.png",
    "assets/icons/settings.png",
    "assets/icons/shopping-cart.png",
    "assets/icons/world.png",
  ];
  var color = [
    Colors.blue,
    Colors.red,
    Colors.teal,
    Colors.lime,
    Colors.deepPurple,
    Colors.green,
    Colors.brown,
    Colors.orange,
    Colors.purple,
    Colors.lightGreen,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Grid With Card",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        // crossAxisSpacing: 10,
        // mainAxisSpacing: 10,
        children: List.generate(10, (index) {
          return Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 15 , bottom: 10),
            child: Container(
                decoration: BoxDecoration(
                  // boxShadow: const [
                  //   BoxShadow(
                  //     color: Colors.blueGrey,
                  //      blurRadius: 5,
                  //      spreadRadius: 6,
                  //      offset: Offset(5, 6),
                  //   ),
                  // ],
                  borderRadius: BorderRadius.circular(20),
                  color: color[index],
                ),
                child: Padding(
                    padding: const EdgeInsets.only(left: 10, top: 55),
                    child: ListTile(
                      title: const Text(
                        "Heart \nShaker",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w700),
                      ),
                      leading: Image.asset(icons[index]),
                    ))),
          );
        }),
      ),
    );
  }
}
