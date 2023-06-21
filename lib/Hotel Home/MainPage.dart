import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => MaterialApp(
            useInheritedMediaQuery: true,
            home: HotelMain(),
            debugShowCheckedModeBanner: false,
          )));
}

class HotelMain extends StatelessWidget {
  //const HotelMain({Key? key}) : super(key: key);

  var HName = [
    "Sheraton Maldives Full Moon Resort & Spa",
    "Hotel Astoria",
    "Baccarat Hotel New York"
  ];

  var HLocation = [
    "Furanafushi Island North Malé Atol,Maldives",
    "Genoa, Italy",
    "New York, United States"
  ];

  var HPrize = [
    "\$259",
    "\$349",
    "\$260",
  ];

  var HImage = [
    "assets/images/Maldives Hotel.jpg",
    "assets/images/Room2.jpg",
    "assets/images/Room3.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu)),
        title: const Text(
          "Hotel Home",textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 28, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.favorite))
        ],
      ),
      body: Container(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Type your Location",
                  style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: "Search",
                  suffixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.redAccent),
                  width: 100,
                  height: 100,
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.bed),
                      Text("Hotel"),
                    ],
                  ),
                ),
                //const SizedBox( width: 10,),
                Container(
                  decoration: BoxDecoration(color: Colors.blueAccent, borderRadius: BorderRadius.circular(20)),
                  width: 100,
                  height: 100,
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.fastfood),
                      Text("Restaurant"),
                    ],
                  ),
                ),
                //const SizedBox( width: 10,),
                Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.green,),
                  width: 100,
                  height: 100,
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.coffee),
                      Text("Cafe"),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15,),
            // ListView.builder(
            //   shrinkWrap: true,
            //   padding: EdgeInsets.zero,
            //   scrollDirection: Axis.horizontal,
            //     itemCount: HImage.length,
            //     itemBuilder: (context, index) {
            //     return Stack(
            //       clipBehavior: Clip.antiAlias,
            //       fit: StackFit.expand,
            //       children: [
            //         Container(
            //           decoration: BoxDecoration(borderRadius: BorderRadius.zero),
            //           child: Image(
            //             width: MediaQuery.of(context).size.width,
            //               height: 300,
            //               image: AssetImage(HImage[index])),
            //         ),
            //         Text(HPrize[index])
            //       ],
            //     );
            //     })

          ],
        ),
      ),
    );
  }
}
