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
        seconds: 5,
        backgroundColor: Colors.white,
        image: Image.asset('assets/launch_gif.gif'),
        photoSize: 100.0,
        navigateAfterSeconds: Main(),
        loaderColor: Colors.blue,
      )
    );
  }
}
class Main extends StatelessWidget {
  Widget _buildPopupDialog(BuildContext context) {
  return new AlertDialog(
    title: Text('Add TODO'),
    content: new Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        TextField(
        ),
      ],
    ),
    actions: <Widget>[
       new FlatButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        child: FlatButton(onPressed: (){}, child: Text("Add"), color: Colors.green,),
      ),
      new FlatButton(onPressed: (){}, child: FlatButton(onPressed: (){}, child: Text("Cancel")))
    ],
  );
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showDialog(context: context, builder: (BuildContext context) =>_buildPopupDialog(context),);
        },
        backgroundColor: Colors.green[400],
        child: Icon(Icons.add),
      )
    );
  }
}