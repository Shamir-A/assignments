import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => const  MaterialApp(
            debugShowCheckedModeBanner: false,
            useInheritedMediaQuery: true,
            home: profileOne(),
          )));
}

class profileOne extends StatelessWidget {
  const profileOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Profile",
          style: TextStyle(
            color: Colors.blue,
            fontSize: 28,
          ),
        ),
        backgroundColor: Colors.white,
        leading: BackButton(
          color: Colors.black,
          onPressed: () {},
        ),
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu_outlined,
                color: Colors.black,
              ))
        ],
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget> [
            const Padding(
              padding:
                  EdgeInsets.only(top: 30, left: 20, right: 20, bottom: 20),
              child: CircleAvatar(
                radius: 65,
                backgroundImage: AssetImage("assets/images/shamir.jpg"),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(onPressed: () {
                }, icon: FaIcon(FontAwesomeIcons.facebook,color: Colors.blue[700],size: 30,)),
                IconButton(onPressed: () {
                }, icon: FaIcon(FontAwesomeIcons.twitter, color: Colors.blue[400],size: 30)),
                IconButton(onPressed: () {
                }, icon: const FaIcon(FontAwesomeIcons.github, color: Colors.black,size: 30,)),
                IconButton(onPressed: () {
                }, icon: const FaIcon(FontAwesomeIcons.linkedin, color: Colors.blue,size: 30,))
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(top: 15),
              child: Text("Shamir Ummer A", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
            ),
            const Text("@srxmir"),
            const Padding(
              padding: EdgeInsets.only(top: 06, bottom: 06),
              child: Text("Software Development", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            ),
            Container(
              height: MediaQuery.of(context).size.height * .4,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.grey[300]),
                        height: 50, width: 330,
                        child: const ListTile(
                          title: Text("Privacy", style: TextStyle(color: Colors.black),),
                          leading: Icon(Icons.privacy_tip_outlined,color: Colors.black,),
                          trailing: Icon(Icons.arrow_forward_ios_outlined, color: Colors.black,),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.grey[300]),
                        height: 50, width: 330,
                        child: const ListTile(
                          title: Text("Purchase History", style: TextStyle(color: Colors.black),),
                          leading: Icon(Icons.history_rounded,color: Colors.black),
                          trailing: Icon(Icons.arrow_forward_ios_outlined, color: Colors.black,),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.grey[300]),
                        height: 50, width: 330,
                        child: const ListTile(
                          title: Text("Help & Support", style: TextStyle(color: Colors.black),),
                          leading: Icon(Icons.help_outline_outlined,color: Colors.black),
                          trailing: Icon(Icons.arrow_forward_ios_outlined, color: Colors.black,),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.grey[300]),
                        height: 50, width: 330,
                        child: const ListTile(
                          title: Text("Settings", style: TextStyle(color: Colors.black),),
                          leading: Icon(Icons.settings,color: Colors.black),
                          trailing: Icon(Icons.arrow_forward_ios_outlined, color: Colors.black,),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.grey[300]),
                        height: 50, width: 330,
                        child: const ListTile(
                          title: Text("Share", style: TextStyle(color: Colors.black),),
                          leading: Icon(Icons.share_outlined,color: Colors.black),
                          trailing: Icon(Icons.arrow_forward_ios_outlined, color: Colors.black,),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.grey[300]),
                        height: 50, width: 330,
                        child: const ListTile(
                          title: Text("Invite a friend", style: TextStyle(color: Colors.black),),
                          leading: Icon(Icons.add_reaction_outlined,color: Colors.black),
                          trailing: Icon(Icons.arrow_forward_ios_outlined, color: Colors.black,),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.grey[300]),
                        height: 50, width: 330,
                        child: const ListTile(
                          title: Text("Log Out", style: TextStyle(color: Colors.black),),
                          leading: Icon(Icons.login_outlined,color: Colors.black),
                          trailing: Icon(Icons.arrow_forward_ios_outlined, color: Colors.black,),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
