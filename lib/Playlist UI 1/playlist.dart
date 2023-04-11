import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => MaterialApp(
            useInheritedMediaQuery: true,
            home: PlayList(),
            debugShowCheckedModeBanner: false,
          )));
}

class PlayList extends StatelessWidget {
  bool showicons = true;
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white10,
        body: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Playlist",
                style:
                TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                  color: Colors.purple,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                style: TextStyle(color: Colors.lime, fontSize: 16),
                keyboardType: TextInputType.text,
                autocorrect: true,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.black,
                    suffixIcon: const Icon(
                        size: 25, Icons.search_outlined, color: Colors.lime),
                    hintText: "Search",
                    hintStyle: const TextStyle(
                      color: Colors.limeAccent,
                      fontSize: 16,
                      //fontStyle: FontStyle.italic
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                    borderSide: const BorderSide( color: Colors.white,
                    width: 5.0)
                    ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView(
                scrollDirection: Axis.vertical,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
              ),
                children: [
                  Card(child: Image.asset("assets/images/musicIcons/popmusic.jpeg",height: 50, width: 50,)),
                  Card(child: Image.asset("assets/images/musicIcons/lofi.jpg",height: 50, width: 50,)),
                  Card(child: Image.asset("assets/images/musicIcons/top50.jpg",height: 50, width: 50,)),
                  Card(child: Image.asset("assets/images/musicIcons/hanz.jpeg",height: 50, width: 50,)),
                  Card(child: Image.asset("assets/images/musicIcons/sushin.jpg",height: 50, width: 50,)),
                  Card(child: Image.asset("assets/images/musicIcons/tiktok.jpg",height: 50, width: 50,)),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: ClipRRect(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          child: BottomNavigationBar(
            backgroundColor: Colors.black,
            currentIndex: index,
            type: BottomNavigationBarType.fixed,
            // onTap: (tapindex){
            //   setState(() {
            //     index = tapindex;
            //   });
            // },
            selectedItemColor: Colors.lime,
            unselectedItemColor: Colors.purple,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(showicons == true
                      ? Icons.home
                      : Icons.home_outlined),
                  label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(showicons == true
                        ? Icons.search_outlined
                        : Icons.saved_search,),
                  label: "Search"),
              BottomNavigationBarItem(
                  icon: Icon(showicons == true
                      ? Icons.bookmark_outlined
                      : Icons.bookmark_outline),
                  label: "Playlist"),
              BottomNavigationBarItem(
                  icon: Icon(showicons == true
                      ? Icons.menu
                      : Icons.menu_open_outlined),
                  label: "Menu"),
            ],
          ),
        ),
      ),
    );
  }
}
