import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => MaterialApp(
            useInheritedMediaQuery: true,
            home: LoginPageTvl(),
            debugShowCheckedModeBanner: false,
          )));
}

class LoginPageTvl extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 20, bottom: 50, left: 35),
              child:  Image(alignment: AlignmentDirectional.topCenter,
                  height: 250,
                  width: 250,
                  image: AssetImage("assets/icons/travel.png")),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 110),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                    onPressed: () {},
                    child: const Padding(
                      padding: EdgeInsets.only(left: 25, right: 25),
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: 25, right: 25, top: 10, bottom: 10),
                        child: Text("Log In"),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 110, top: 5, bottom: 5),
              child: Text("-or-", style: TextStyle(fontSize: 15)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 100, bottom: 8),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  onPressed: () {},
                  child: const Wrap(children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 10, top: 15, bottom: 15),
                      child: Text("Log In with Facebook"),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15, top: 10),
                      child: Icon(Icons.facebook),
                    ),
                  ])),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 100, bottom: 8),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  onPressed: () {},
                  child: const Wrap(children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 20, top: 15, bottom: 15),
                      child: Text("Log In with Twitter"),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 25, top: 10),
                      child: Icon(EvaIcons.twitter),
                    ),
                  ])),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 100, bottom: 8),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  onPressed: () {},
                  child: const Wrap(children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 20, top: 15, bottom: 15),
                      child: Text("Log In with Google"),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 25, top: 10),
                      child: Icon(EvaIcons.google),
                    ),
                  ])),
            ),
          ],
        ),
      ),
    );
  }
}
