import 'package:flutter/material.dart';
import 'widgets/green_widget.dart';
import 'widgets/orange_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState()=>_MyAppState();
}

class _MyAppState extends State<MyApp>{
  int _counterValue=0;
  void _updateCounter(){
    setState(() {
      _counterValue++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.amber[100],
        appBar: AppBar(
          title: Text('Lifting up state'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            GreenWidget(_updateCounter),
            OrangeWidget(_counterValue),
          ],
        ),
      ),
    );
  }

}