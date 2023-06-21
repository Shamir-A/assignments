import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(builder: (BuildContext context)=> MaterialApp(
    useInheritedMediaQuery: true,
    home: PLGD(),
    debugShowCheckedModeBanner: false,
  )));
}
class PLGD extends StatelessWidget {
  @override
  var img = [
    "assets/images/musicIcons/hanz.jpeg",
    "assets/images/musicIcons/lofi.jpg",
    "assets/images/musicIcons/popmusic.jpeg",
    "assets/images/musicIcons/sushin.jpg",
    "assets/images/musicIcons/tiktok.jpg",
    "assets/images/musicIcons/top50.jpg"
  ];
  var txt = [
    "Hanz Zimmer",
    "Lo-Fi",
    "Pop Music",
    "Sushin Shyam",
    "Tik Tok",
    "Top 50"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  return Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(img[index]))),
                          ),
                        ),
                      ),
                      Positioned(
                          left: 15,
                          bottom: 20,
                          child: Text(
                            txt[index],
                            style: const TextStyle(
                                fontSize: 22,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ))
                    ],
                  );
                })
          ],
        ),
      ),
    );
  }
}
