import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(DevicePreview(builder: (BuildContext context) => const MaterialApp(
    useInheritedMediaQuery: true,
    home: PLGrid(),
    debugShowCheckedModeBanner: false,
  )));
}
class PLGrid extends StatelessWidget {
  const PLGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Center(
        child: Container(
          child: GridView(
              scrollDirection: Axis.vertical,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
              ),
              children: [
                Card(
                    shape: RoundedRectangleBorder(side: const BorderSide(color: Colors.deepPurple),
                    borderRadius: BorderRadius.circular(20)),
                    child: Image.asset(
                      fit: BoxFit.cover,
                  "assets/images/musicIcons/popmusic.jpeg",
                  height: 50,
                  width: 50,
                ),),
                Card(
                  shape: RoundedRectangleBorder(side: const BorderSide(color: Colors.deepPurple),
                  borderRadius: BorderRadius.circular(20)),
                    child: Image.asset(
                      fit: BoxFit.cover,
                  "assets/images/musicIcons/lofi.jpg",
                  height: 50,
                  width: 50,
                ),),
                Card(
                  shape: RoundedRectangleBorder(side: const BorderSide(color: Colors.deepPurple),
                      borderRadius: BorderRadius.circular(20)),
                    child: Image.asset(
                      fit: BoxFit.cover,
                  "assets/images/musicIcons/top50.jpg",
                  height: 50,
                  width: 50,
                ),),
                Card(
                  shape: RoundedRectangleBorder(side: const BorderSide(color: Colors.deepPurple),
                  borderRadius: BorderRadius.circular(20)),
                    child: Image.asset(
                      fit: BoxFit.cover,
                  "assets/images/musicIcons/hanz.jpeg",
                  height: 50,
                  width: 50,
                ),),
                Card(
                  shape: RoundedRectangleBorder(side: const BorderSide(color: Colors.deepPurple),
                      borderRadius: BorderRadius.circular(20)),
                    child: Image.asset(
                      fit: BoxFit.cover,
                  "assets/images/musicIcons/sushin.jpg",
                  height: 50,
                  width: 50,
                ),),
                Card(
                  shape: RoundedRectangleBorder(side: const BorderSide(color: Colors.deepPurple),
                  borderRadius: BorderRadius.circular(20)),
                    child: Image.asset(
                      fit: BoxFit.cover,
                  "assets/images/musicIcons/tiktok.jpg",
                  height: 50,
                  width: 50,
                ),),
              ],
    ),
        ),
      );
  }
}
