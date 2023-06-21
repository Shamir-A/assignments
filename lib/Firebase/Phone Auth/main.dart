import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
}
class FBPhone extends StatefulWidget {
  const FBPhone({Key? key}) : super(key: key);

  @override
  State<FBPhone> createState() => _FBPhoneState();
}

class _FBPhoneState extends State<FBPhone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Phone Authentication",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );
  }
}
