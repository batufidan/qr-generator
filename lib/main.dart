import 'package:flutter/material.dart';
import 'package:flutter_qr_generator/ui/style/style.dart';
import 'package:qr_flutter/qr_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String data = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyle.primaryColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: QrImage(
              data: data,
              backgroundColor: Colors.white,
              size: 300,
            ),
          ),
          SizedBox(height: 24),
          Container(
            width: 300,
            child: TextField(
              onChanged: (value){
                setState(() {
                  data = value;
                });
              },
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintText: "Type the Data",
                filled: true,
                fillColor: AppStyle.textInputColor,
                border: InputBorder.none,
              ),
            ),
          ),
          SizedBox(height: 24),
          RawMaterialButton(
            onPressed: () {},
            fillColor: AppStyle.accentColor,
            shape: StadiumBorder(),
            padding: EdgeInsets.symmetric(
              horizontal: 36,
              vertical: 16,
            ),
            child: Text("Generate a QR Code"),
          )
        ],
      ),
    );
  }
}
