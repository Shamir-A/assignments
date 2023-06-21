import 'package:assignments/Tourism%20UI%201/placeData.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class placeList extends StatelessWidget {
  var sgtn = [
    "assets/images/Italy-Venice.jpg",
    "assets/images/Croatia-Dubrovnik.jpg",
    "assets/images/new york.jpg",
    "assets/images/paris.jpg",
    "assets/images/Russia-St.Petersburg.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    // fetch id from the previous page
    final id = ModalRoute.of(context)?.settings.arguments;

    // fetch the place from the placeData corresponding to the id from the previous page
    final place = placeData.firstWhere((plcs) => plcs["id"] == id);
    return Scaffold(
      backgroundColor: Colors.white70,
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
            const SizedBox(
              height: 30,
            ),
            Container(
              child: CarouselSlider(
                items: [
                  Container(
                      child:
                          Image.asset("assets/images/Russia-St.Petersburg.jpg")),
                  Container(
                      child:
                      Image.asset("assets/images/Croatia-Dubrovnik.jpg")),
                  Container(
                      child:
                      Image.asset("assets/images/Italy-Venice.jpg")),
                  Container(
                      child:
                      Image.asset("assets/images/paris.jpg")),
                  Container(
                      child:
                      Image.asset("assets/images/new york.jpg"))
                ],
                options: CarouselOptions(
                  autoPlayCurve: Curves.bounceOut,
                  autoPlay: true,
                  height: 200,
                  viewportFraction: .9,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: const Duration(seconds: 3),
                  pauseAutoPlayInFiniteScroll: true,
                ),
              ),
            ),
            // CarouselImages(
            //   scaleFactor: 0.6,
            //   listImages: sgtn, height: 150,
            // verticalAlignment: Alignment.bottomLeft,
            // ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    elevation: 3,
                    primary: Colors.grey,
                    onPrimary: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    minimumSize: Size(100, 50)),
                onPressed: () {},
                child: const Text(
                  "Press to Explore",
                  style: TextStyle(fontSize: 13),
                ))
          ],
        ),
      ),
    );
  }
}
