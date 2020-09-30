import 'package:flutter/material.dart';
import 'package:whatsapp_uiclone/splash_screen.dart';

import 'home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   primaryColor: Color(0xff075e54),
      //   accentColor: Color(0xff45CE30)
      // ),
      // title: "Whatsapp UI Clone",
      // home: HomePage(),
      // 
      // debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
