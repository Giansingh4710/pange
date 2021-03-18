import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.lightBlue,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: FirstClass(),
    );
  }
}

class FirstClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('Vaheguru'), leading: CloseButton(color: Colors.blue)),
        //body: Text('Vaheguru'),
        body: Row(
          children: <Widget>[
            TextWid(),
            TextWid(),
            TextWid(),
            TextWid(),
            TextWid(),
            TextWid(),
            TextWid(),
          ],
        ));
  }
}

class TextWid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text('Tuhi\t');
  }
}
