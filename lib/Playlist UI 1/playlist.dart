import 'package:assignments/Playlist%20UI%201/PL1.dart';
import 'package:assignments/Playlist%20UI%201/PlaylistHome.dart';
import 'package:assignments/Playlist%20UI%201/playlistGrid.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => MaterialApp(
            useInheritedMediaQuery: true,
            home: PlayList(),
            debugShowCheckedModeBanner: false,
          )));
}

class PlayList extends StatefulWidget {
  @override
  State<PlayList> createState() => _PlayListState();
}

class _PlayListState extends State<PlayList> {
  int _selectedIndex = 0;

  List<Widget> tabItem = [
    const Center(child: Text("0")),
    const Center(child: Text("1")),
    const Center(child: Text("2")),
    const Center(child: Text("3")),
  ];
  int index = 0;

  @override
  void iniState() {
    super.initState();
  }

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
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                  color: const Color(0xF0B4C2),
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
            PLGD(),
          ],
        ),
        bottomNavigationBar: FlashyTabBar(
          backgroundColor: Colors.black,
          selectedIndex: _selectedIndex,
          iconSize: 25,
          animationCurve: Curves.linear,
          showElevation: false,
          items: [
            FlashyTabBarItem(
                activeColor: Colors.white,
                icon: const Icon(Icons.home),
                title: const Text("Home")),
            FlashyTabBarItem(
                activeColor: Colors.white,
                icon: const Icon(Icons.search_outlined),
                title: const Text("Search")),
            FlashyTabBarItem(
                activeColor: Colors.white,
                icon: const Icon(Icons.bookmark_outline),
                title: const Text("Playlist")),
            FlashyTabBarItem(
                activeColor: Colors.white,
                icon: const Icon(Icons.more_horiz_outlined),
                title: const Text("Menu"))
          ],
          onItemSelected: (index) => setState(() {
            _selectedIndex = index;
          }),
        ),
      ),
    );
  }
}
