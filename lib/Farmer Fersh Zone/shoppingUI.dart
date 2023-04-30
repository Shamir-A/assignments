import 'package:assignments/Farmer%20Fersh%20Zone/FarmersGrid.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => MaterialApp(
            theme: ThemeData(primarySwatch: Colors.green),
            useInheritedMediaQuery: true,
            home: const FarmersZone(),
            debugShowCheckedModeBanner: false,
          )));
}

class FarmersZone extends StatefulWidget {
  const FarmersZone({Key? key}) : super(key: key);

  @override
  State<FarmersZone> createState() => _FarmersZoneState();
}

class _FarmersZoneState extends State<FarmersZone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        scrollDirection: Axis.vertical,
        slivers: [
          SliverAppBar(
            floating: false,
            pinned: true,
            elevation: 0,
            title: const Text(
              "FARMERS FRESH ZONE",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(left: 5.0, bottom: 4, top: 25),
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.location_on_outlined,
                      size: 20,
                    )),
              ),
              const Padding(
                padding:
                    EdgeInsets.only(bottom: 8.0, top: 35, left: 0, right: 25.0),
                child: Text(
                  "KOCHI",
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ],
            bottom: AppBar(
              elevation: 0,
              title: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                width: double.infinity,
                height: 40,
                child: TextFormField(
                  decoration: const  InputDecoration(
                      hintText: "Search for fruits and vegetables..",
                      prefixIcon:
                          Icon(Icons.search_outlined, color: Colors.grey),
                      suffixIcon: Icon(
                        Icons.mic,
                        color: Colors.grey,
                      )),
                ),
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            const SizedBox(
              height: 6,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const SizedBox(
                      width: 4,
                    ),
                    Container(
                        height: 25,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.blue),
                        ),
                        child: const Center(
                          child: Text(
                            "FRUITS",
                            style: TextStyle(color: Colors.blue),
                          ),
                        )),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                      height: 25,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.blue),
                      ),
                      child: const Center(
                        child: Text(
                          "VEGETABLES",
                          style: TextStyle(color: Colors.blue),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                      height: 25,
                      width: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.blue),
                      ),
                      child: const Center(
                          child: Text(
                        "EXOTIC",
                        style: TextStyle(color: Colors.blue),
                      )),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                      height: 25,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.blue),
                      ),
                      child: const Center(
                          child: Text(
                        "BEVERAGES",
                        style: TextStyle(color: Colors.blue),
                      )),
                    ),
                  ],
                ),
              ),
            ),
            CarouselSlider(
                items: [
                  Container(
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.contain,
                            image: AssetImage(
                                "assets/images/foodstuff/Nestle-TasteTheGoodLife-Banner.jpg"))),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.contain,
                            image: AssetImage(
                                "assets/images/foodstuff/FreshPacksGrocery.jpg"))),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.contain,
                            image: AssetImage(
                                "assets/images/foodstuff/avt tea.jpg"))),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.contain,
                            image: AssetImage(
                                "assets/images/foodstuff/spices.jpg"))),
                  ),
                ],
                options: CarouselOptions(
                  autoPlay: true,
                  viewportFraction: .9,
                  height: 180,
                  enlargeCenterPage: true,
                  autoPlayCurve: Curves.linear,
                  autoPlayAnimationDuration: const Duration(seconds: 3),
                  enableInfiniteScroll: true,
                  pauseAutoPlayOnManualNavigate: true,
                )),
            const SizedBox(
              height: 10,
            ),
            Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(30)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: const [
                          Icon(
                            FontAwesomeIcons.stopwatch,
                            color: Colors.green,
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text("30 MINS POLICY"),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: const [
                          Icon(
                            FontAwesomeIcons.locationArrow,
                            color: Colors.red,
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text("TRACEBILITY"),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: const [
                          Icon(
                            FontAwesomeIcons.sourcetree,
                            color: Colors.yellow,
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text("LOCAL SOURCING"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ])),
          SliverList(
              delegate: SliverChildListDelegate([
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20, left: 8),
              child: Text(
                "SHOP BY CATEGORY",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
             FarmersGrid(),
            Container(
              decoration: BoxDecoration(
                image: const DecorationImage(
                    image: AssetImage("assets/images/foodstuff/chocolate.jpg"), fit: BoxFit.contain),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ])),
        ],
      ),
      bottomNavigationBar: const GNav(
          color: Colors.green,
          activeColor: Colors.deepPurple,
          rippleColor: Colors.teal,
          hoverColor: Colors.lightGreenAccent,
          backgroundColor: Colors.transparent,
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
          tabs: [
            GButton(
              icon: Icons.home_outlined,
              text: 'Home',
            ),
            GButton(
              icon: Icons.shopping_cart_outlined,
              text: 'Cart',
            ),
            GButton(
              icon: Icons.account_box_outlined,
              text: 'Account',
            ),
          ]),
    );
  }
}