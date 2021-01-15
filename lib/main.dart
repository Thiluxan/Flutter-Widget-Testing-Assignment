import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final textController = TextEditingController();
  String output = "Placeholder";
  final formKey = new GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Testing Assingment"),
      ),
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(labelText: "Random Text"),
            controller: textController,
          ),
          RaisedButton(
            child: Text("Display Text"),
            onPressed: () {
              setState(() {
                output = textController.text;
                textController.clear();
              });
            },
          ),
          Text(
            output,
            style: TextStyle(color: Colors.blue, fontStyle: FontStyle.italic),
          )
        ],
      ),
    );
  }
}
