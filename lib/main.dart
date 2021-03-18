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
    return Scaffold(appBar: AppBar(title: Text("Vaheguru")), body: TextInput());
  }
}

class TextInput extends StatefulWidget {
  @override
  _TextInputState createState() => _TextInputState();
}

class _TextInputState extends State<TextInput> {
  final control = TextEditingController();
  String text = "";

  @override
  void dispose() {
    super.dispose();
    control.dispose();
  }

  void changeText(text) {
    setState(() {
      this.text = text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      TextField(
        controller: this.control,
        decoration: InputDecoration(
            prefixIcon: Icon(Icons.add_comment), labelText: "Type here:"),
        onChanged: (text) => this.changeText(text),
      ),
      Text(this.text)
    ]);
  }
}
