import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(
        seconds: 15,
        backgroundColor: Colors.black,
        image: Image.asset('assets/launch_image.png'),
        loaderColor: Colors.white,
        photoSize: 150.0,
        navigateAfterSeconds: Main(),
      )
    );
  }
}
class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      )
    );
  }
}