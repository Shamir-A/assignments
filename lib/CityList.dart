import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => MaterialApp(
            theme: ThemeData(primarySwatch: Colors.lime),
            useInheritedMediaQuery: true,
            home: cityList(),
            debugShowCheckedModeBanner: false,
          )));
}

class cityList extends StatelessWidget {
  var city = ["Tokiyo", "Paris","Delhi", "Dubai","London", "Vancouver", "New York", "Berlin", "Rome"];
  var country = ["Japan", "France","India", "United Arab Emirates","Britain", "Canada", "USA", "Germany", "Italy"];
  var population = [
    "Population : 38M",
    "Population : 2.25M",
    "Population : 19M",
    "Population : 3.43M"
    "Population : 8M",
    "Population : 2.4M",
    "Population : 8.1M",
    "Population : 5.8M",
    "Population : 76M"
  ];
  var images = [
    "assets/images/tokiyo.jpg",
    "assets/images/paris.jpg",
    "assets/images/delhi.jpg",
    "assets/images/dubai.jpg",
    "assets/images/london.jpg",
    "assets/images/vancouver.jpg",
    "assets/images/new york.jpg",
    "assets/images/berlin.jpg",
    "assets/images/rome.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Cites around the World",
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        children: List.generate(
            8,
            (index) => Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Card(
                    child: ListTile(
                      title: Text(
                        city[index],
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                      subtitle: Text(
                        "${country[index]} \n${population[index]}",
                        style: const TextStyle(fontSize: 15),
                      ),
                      isThreeLine: true,
                      leading: Image.asset(images[index]),
                      // leading: Container(
                      //   decoration: BoxDecoration(
                      //       image: DecorationImage(
                      //           fit: BoxFit.fill,
                      //           image: AssetImage(images[index]))),
                      // ),

                    ),
                  ),
            )),
      ),
    );
  }
}
