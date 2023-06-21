import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => MaterialApp(
            useInheritedMediaQuery: true,
            home: hotelDetails(),
            debugShowCheckedModeBanner: false,
          )));
}

class hotelDetails extends StatelessWidget {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Container(
                //mainAxisAlignment: MainAxisAlignment.start,
                alignment: Alignment.topCenter,
                //height: 400,
                child: Image.asset(
                  "assets/images/moxy.jpg",
                  fit: BoxFit.contain,
                )),
            const Padding(
              padding: EdgeInsets.only(top: 150, left: 20),
              child: Text(
                "Moxy London \nStratford",
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 220, left: 20),
              child: Container(
                child: Text(
                  " 8.4/3,583 reviews ",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      color: Colors.white),
                ),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(70),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 210, left: 340),
              child: IconButton(
                  color: Colors.white,
                  onPressed: () {},
                  icon: const Icon(Icons.favorite_border_rounded)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 280, left: 20),
              child: Container(
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.greenAccent,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.greenAccent,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.greenAccent,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.greenAccent,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.blue,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 310, left: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        size: 15,
                        color: Colors.grey,
                      ),
                      Text(
                        "Stratford, London - 4.7 KM to center",
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      )
                    ],
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 285, left: 270),
              child: Column(
                children: [
                  Text(
                    "\£160.89",
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                  Row(
                    children: [
                      Text(
                        "    /per night",
                        style:
                            TextStyle(fontSize: 16, color: Colors.greenAccent),
                      )
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 350, left: 28),
              child: ElevatedButton(
                onPressed: () {},
                child:  Text(
                  "Book Now",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.greenAccent,
                    padding: const EdgeInsets.symmetric(
                        vertical: 25, horizontal: 120)),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 430, left: 15),
              child: Text(
                "Moxy London Startford",
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.only(top: 470, left: 15),
                child: Text(
                    "Get your trip off to a great start with a stay at this property, which offers free Wi-Fi in all rooms. Conveniently situated in the Stratford part of London, this property puts you close to attractions and interesting dining options. Don't leave before paying a visit to the famous London Eye. This 3-star property is packed with in-house facilities to improve the quality and joy of your stay.", style: TextStyle(fontWeight: FontWeight.normal, fontSize: 18),),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.greenAccent,
        unselectedItemColor: Colors.blue,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.search_sharp), label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border_rounded), label: "Favorite"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "Settings"),
        ],
        onTap: (int i) => print('click index=$i'),
      ),
    );
  }
}
