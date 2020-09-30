import 'package:flutter/material.dart';
import 'dart:async';

import 'home_page.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => HomePage(),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      fit: StackFit.expand,
      children: [
        Container(
          decoration: BoxDecoration(color: Colors.red),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 50,
                          child: Icon(
                            Icons.chat,
                            size: 50,
                            color: Colors.green,
                          )),
                      Padding(padding: const EdgeInsets.only(top: 10)),
                      Text("Whats App Clone",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 30))
                    ],
                  ),
                )),
            Expanded(
                flex: 1,
                child: Container(
                  child: Column(
                    children: [
                      CircularProgressIndicator(),
                      Padding(padding: const EdgeInsets.only(top: 40)),
                      Text("welcome to WhatsApp \n by Apoorv Dixit ")
                    ],
                  ),
                ))
          ],
        ),
      ],
    ));
  }
}
