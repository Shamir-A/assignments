import 'package:assignments/Tourism%20UI%201/placeData.dart';
import 'package:flutter/material.dart';

class placeList extends StatelessWidget {
  const placeList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // fetch id from the previous page
    final id = ModalRoute.of(context)?.settings.arguments;

    // fetch the place from the placeData corresponding to the id from the previous page
    final place = placeData.firstWhere((plcs) => plcs["id"] == id);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Places"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: ListView(
          children: [
            Image.asset(place["image"]),
            Text(
              "${place["place"]}",
              style: TextStyle(fontSize: 30),
            ),
            Text("${place["about"]}"),
            SizedBox(
              width: double.infinity,
              child: TextButton(
                style: ButtonStyle(),
                  onPressed: () {},
                  child: const Text(
                    "Press to Explore",
                    style: TextStyle(fontSize: 13),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
