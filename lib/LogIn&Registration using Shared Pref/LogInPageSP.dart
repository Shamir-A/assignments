import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'HomeSP.dart';
import 'RegPageSP.dart';


void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => MaterialApp(
        theme: ThemeData(primarySwatch: Colors.orange),
        useInheritedMediaQuery: true,
        home: LoginPage1(),
        debugShowCheckedModeBanner: false,
      )));
}

class LoginPage1 extends StatefulWidget {
  @override
  State<LoginPage1> createState() => _LoginPage1State();
}

class _LoginPage1State extends State<LoginPage1> {

  bool showpsw = true; // To make visible Password

  late SharedPreferences data;
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  late bool newuser;

  // To fetch values stored in SharedPref
  late String uname;
  late String pswd;
  late String names;

  @override
  void initState() {
    // TODO: implement initState
    CheckUser();
    getValue();
    // super.initState();
  }

  void getValue() async {
    data = await SharedPreferences.getInstance();
    setState(() {
      names = data.getString('name')!;
      uname = data.getString('username')!;
      pswd = data.getString('password')!;
    });
  }

  void CheckUser() async {
    data = await SharedPreferences.getInstance();
    newuser = (data.getBool('newuser') ?? true);

    if (newuser == false) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => HomePage1()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
            style: TextStyle(color: Colors.white), "Shared Preference"),
      ),
      body: Center(
        child: Column(
          children: [
            const Image(
                image: AssetImage("assets/images/women_using_phone.jpg")),
            const Text(
              "Login",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            Padding(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  controller: username,
                  decoration: const InputDecoration(
                      suffixIcon: Icon(Icons.account_circle_outlined),
                      border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(15))), labelText: "UserName"),
                )),
            Padding(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  obscureText: showpsw,
                  obscuringCharacter: '*',
                  controller: password,
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            if(showpsw) {
                              showpsw = false;
                            } else {
                              showpsw = true;
                            }
                          });
                        },
                        icon: Icon(showpsw == true
                            ? Icons.visibility_off_outlined
                            : Icons.visibility),
                      ),
                      border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(15))), labelText: "Password"),
                )),

            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      alignment: Alignment.bottomLeft,child: TextButton(onPressed: () {}, child: Text("Forget Password"))),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15))),
                      onPressed: () {
                        String unames = username.text;
                        String pwd = password.text;

                        if (unames != '' &&
                            pswd != '' &&
                            uname == uname &&
                            pwd == pswd) {
                          print("Login Success");

                          data.setString("username", uname);
                          data.setBool("newuser", false);
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => HomePage1()));
                        }
                      },
                      child: const Padding(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        child: Text(style: TextStyle(color: Colors.white),"Log In"),
                      )),
                ],
              ),
            ),
            TextButton(
                style: TextButton.styleFrom(foregroundColor: Colors.blue),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => RGPage()));
                },
                child: const Text("Not a user, Login Here"))
          ],
        ),
      ),
    );
  }
}
