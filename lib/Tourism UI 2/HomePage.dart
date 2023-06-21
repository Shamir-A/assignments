import 'package:assignments/Tourism%20UI%202/DetailedPage.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => MaterialApp(
            useInheritedMediaQuery: true,
            home: TUIHome(),
            debugShowCheckedModeBanner: false,
        // routes: {
        //       "nextpage" : (context) => TUIPage2(),
        // },
          )));
  // runApp(MaterialApp(
  //   useInheritedMediaQuery: true,
  //   home: TUIHome(),
  //   debugShowCheckedModeBanner: false,
  // ));
}

class TUIHome extends StatelessWidget {
  var stimages = [
    "assets/images/tokiyo.jpg",
    "assets/images/paris.jpg",
    "assets/images/dubai.jpg",
    "assets/images/london.jpg",
    "assets/images/Mountain.jpg",
    "assets/images/India-Goa.jpg",
    "assets/images/vancouver.jpg",
    "assets/images/new york.jpg",
    "assets/images/berlin.jpg",
    "assets/images/rome.jpg",
    "assets/images/delhi.jpg",
  ];

  var views = [
    "7050",
    "7051",
    "7052",
    "7053",
    "7054",
    "7055",
    "7056",
    "7057",
    "7058",
    "7059",
  ];

  var plscatgry = [
    "Furious Places",
    "Luxury Places",
    "Favorite Place",
    "Nature Places",
    "Mountain Places",
    "Beach Places",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text(
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
          "Go Fast",
        ),
        leading: const Icon(
          Icons.menu,
          size: 28,
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          width: MediaQuery.of(context).size.width,
          //height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      suffixIcon: const Icon(Icons.search_outlined,
                          color: Colors.white),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      labelText: "Search",
                      labelStyle: TextStyle(color: Colors.white)),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Popular Places",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "View All",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              GridView.builder(
                  shrinkWrap: true,
                  itemCount: plscatgry.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20),
                  itemBuilder: (ctx, index) {
                    return Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Stack(
                        children: [
                          Container(
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height,
                              alignment: Alignment.center,
                              child: Image.asset(
                                "${stimages[index]}",
                                height: 200,
                                width: 200,
                                fit: BoxFit.fill,
                              )),
                          Positioned(
                              top: 15,
                              left: 10,
                              child: Card(
                                  color: Colors.amberAccent,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "${views[index]}",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ))),
                          Positioned(
                              top: 145,
                              left: 15,
                              child: Text(
                                "${plscatgry[index]}",
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ))
                        ],
                      ),
                    );
                  }),
              // const SizedBox(
              //   height: 10,
              // ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        minimumSize: Size(100, 70)),
                    onPressed: () {},
                    child: const Text("Explore Now",
                        style: TextStyle(fontSize: 16)),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),

    );
  }

 // void gotoNext(BuildContext context, )
}
