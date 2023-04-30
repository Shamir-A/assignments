import 'package:flutter/material.dart';

class PLGD extends StatelessWidget {
  List<String> image = [
    "assets/images/musicIcons/popmusic.jpeg",
    "assets/images/musicIcons/lofi.jpg",
    "assets/images/musicIcons/top50.jpg",
    "assets/images/musicIcons/hanz.jpeg",
    "assets/images/musicIcons/sushin.jpg",
    "assets/images/musicIcons/tiktok.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
        ),
        itemBuilder: (BuildContext, int index){
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  // height: MediaQuery.of(context).size.height / 9,
                  // width: MediaQuery.of(context).size.width * .3,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage(image[index]), fit: BoxFit.cover
                    )
                  ),
                ),
              )
            ],
          );
        });
  }
}
