import 'package:flutter/material.dart';
import 'package:instagram_ui_clone/views/home_page.dart'; 

void main() => runApp(MyApp());



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    return MaterialApp(
    debugShowCheckedModeBanner: false,
      title: "InstagramUIClone",
          home: HomePage(),
    );
  }
}