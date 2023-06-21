import 'package:assignments/Firebase/Phone%20Auth/OTP.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    useInheritedMediaQuery: true,
    debugShowCheckedModeBanner: false,
    home: PhoneAuth(),
  ));
}

class PhoneAuth extends StatefulWidget {
  //const Phone({Key? key}) : super(key: key);

  static String verify = "";

  @override
  State<PhoneAuth> createState() => _PhoneAuthState();
}

class _PhoneAuthState extends State<PhoneAuth> {

  TextEditingController countryCode =TextEditingController();
  var phone = "";

  @override
  void initState() {
    // TODO: implement initState
    countryCode.text = "+91";
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(left: 25, right: 25),
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                  height: 200,
                  width: 200,
                  "assets/icons/Profiling_Isometric.png"),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Phone Verification",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "You need register your phone before getting started !",
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30,),
              Container(
                height: 55,
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.grey),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                        width: 40,
                        child: TextFormField(
                          controller: countryCode,
                          decoration: const InputDecoration(border: InputBorder.none),
                        )),
                    const Text("|", style: TextStyle(fontSize: 28, color: Colors.grey),),
                    const SizedBox(width: 10,),
                    Expanded(
                        child: TextFormField(
                          keyboardType: TextInputType.phone,
                          onChanged: (value){
                            phone = value;
                          },
                            decoration: const InputDecoration(border: InputBorder.none, hintText: "Phone")
                        )),
                  ],
                ),
              ),
              const SizedBox(height: 10,),
              SizedBox(
                height: 40,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () async {
                    await FirebaseAuth.instance.verifyPhoneNumber(
                      phoneNumber: '${countryCode.text + phone}',
                      verificationCompleted: (PhoneAuthCredential credential) {},
                      verificationFailed: (FirebaseAuthException e) {},
                      codeSent: (String verificationId, int? resendToken) {
                        PhoneAuth.verify = verificationId;
                        Navigator.push(context, MaterialPageRoute(builder: (context) => otp()));
                      },
                      codeAutoRetrievalTimeout: (String verificationId) {},
                    );
                  },
                  child: Text("Send OTP"),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.green.shade600,
                      onPrimary: Colors.white70,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
