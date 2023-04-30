import 'package:assignments/Playlist%20UI%201/PL1.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => const MaterialApp(
            useInheritedMediaQuery: true,
            home: PLMain(),
            debugShowCheckedModeBanner: false,
          )));
}

class PLMain extends StatefulWidget {
  const PLMain({Key? key}) : super(key: key);

  @override
  State<PLMain> createState() => _PLMainState();
}

class _PLMainState extends State<PLMain> {
  bool showicons = true;
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        scrollDirection: Axis.vertical,
        slivers: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Playlist",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 28,
                color: Colors.purple,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              style: const TextStyle(color: Colors.lime, fontSize: 16),
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
                    borderSide:
                        const BorderSide(color: Colors.white, width: 5.0)),
              ),
            ),
          ),
          SliverList(delegate: SliverChildListDelegate([
            const SizedBox(
              height: 10,
            ),
            PLGD(),
          ]))
        ],
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        child: BottomNavigationBar(
          onTap: (tapindex) {
            setState((){
              index = tapindex;
            });
          },
          backgroundColor: Colors.black,
          currentIndex: index,
          type: BottomNavigationBarType.fixed,
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
    );
  }
}
