import 'package:flutter/material.dart';

class FarmersGrid extends StatelessWidget {
  List<String> image = [
    "assets/images/foodstuff/veggies.jpg",
    "assets/images/foodstuff/fruits.jpg",
    "assets/images/foodstuff/juices.jpeg",
    "assets/images/foodstuff/nuts.jpeg",
    "assets/images/foodstuff/exotic.jpeg",
    "assets/images/foodstuff/meats.jpg"
  ];
  List<String> name = [
    "VEGETABLES",
    "FRUITS",
    "FRESH DRINKS",
    "NUTS",
    "ÉXOTIC FRUITS",
    "MEAT"
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
        ),
        itemCount: image.length,
        itemBuilder: (BuildContext, int index){
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  height: MediaQuery.of(context).size.height / 9,
                  width: MediaQuery.of(context).size.width * .3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                     image: AssetImage(image[index]), fit: BoxFit.cover),
                ),
              ),
              ),
              const SizedBox(
                height: 8,
              ),
              Center(child: Text(name[index])),
            ],
          );
        });
  }
}
