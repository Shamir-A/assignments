
import 'package:assignments/LogIn&Registration%20using%20Shared%20Pref/LogInPageSP.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main(){
  runApp(DevicePreview(builder: (BuildContext context) => MaterialApp(
    theme: ThemeData(primarySwatch: Colors.orange),
    useInheritedMediaQuery: true,
    home: RGPage(),
    debugShowCheckedModeBanner: false,
  )));
}
class RGPage extends StatefulWidget {


  @override
  State<RGPage> createState() => _RGPageState();
}

class _RGPageState extends State<RGPage> {

  TextEditingController names = TextEditingController();
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  final email = TextEditingController();
  final phone = TextEditingController();
  final gender = TextEditingController();
  late SharedPreferences data;

  @override
  void dispose() {
    // TODO: implement initState
    names.dispose();
    username.dispose();
    password.dispose();
    email.dispose();
    phone.dispose();
    gender.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(style: TextStyle(color: Colors.white),"Shared Preference"),
      ),
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                  height: 200,
                  width: 200,
                  child:  Image(image: AssetImage("assets/icons/meeting.png"))),
              const Text("Sign Up", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
              Padding(padding: const EdgeInsets.all(7),
                  child: TextField(
                    controller: names,
                    decoration: const InputDecoration(
                        suffixIcon: Icon(Icons.person_outline),
                        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(15))),
                        labelText: "Name"
                    ),
                  )),
              Padding(padding: const EdgeInsets.all(7.0),
                  child: TextField(
                    controller: username,
                    decoration: const InputDecoration(
                        suffixIcon: Icon(Icons.account_circle_outlined),
                        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(15))),
                        labelText: "UserName"
                    ),
                  )),
              Padding(padding: const EdgeInsets.all(7),
                  child: TextField(
                    controller: phone,
                    decoration: const InputDecoration(
                        suffixIcon: Icon(Icons.phone_enabled_outlined),
                        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(15))),
                        labelText: "Phone"
                    ),
                  )),
              Padding(padding: const EdgeInsets.all(7),
                  child: TextField(
                    controller: email,
                    decoration: const InputDecoration(
                        suffixIcon: Icon(Icons.email_outlined),
                        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(15))),
                        labelText: "Email"
                    ),
                  )),
              Padding(padding: const EdgeInsets.all(7),
                  child: TextField(
                    controller: password,
                    decoration: const InputDecoration(
                        suffixIcon: Icon(Icons.remove_red_eye_outlined),
                        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(15))),
                        labelText: "Password"
                    ),
                  )),
              Padding(padding: const EdgeInsets.all(7),
                  child: TextField(
                    controller: gender,
                    decoration: const InputDecoration(
                        suffixIcon: Icon(Icons.person_search_outlined),
                        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(15))),
                        labelText: "Gender"
                    ),
                  )),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                  onPressed: () {
                    Registerr();
                  }, child: const Text(style: TextStyle(color: Colors.white),"Sign Up")),
              TextButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage1()));
              }, child: const Text(style: TextStyle(color: Colors.blue),"Already have an Acoount,LogIn" ))
            ],
          ),
        ),
      ),
    );
  }


  void Registerr() async {
    data = await SharedPreferences.getInstance();
    String name = names.text;
    String uname = username.text;
    String pswd = password.text;
    String emailId = email.text;
    String phno = phone.text;
    String genderId = gender.text;

    if(uname != '' && pswd != '') {
      data.setString('name', name);
      data.setString('username', uname);
      data.setString('password', pswd);
      data.setString("Phone Number", phno);
      data.setString("Email", emailId);
      data.setString("Gender", genderId);
      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage1()));
    }
  }
}

