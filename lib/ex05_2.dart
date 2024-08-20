import 'package:flutter/material.dart';

class MyTextInput2 extends StatefulWidget {
  const MyTextInput2({super.key});

  @override
  MyTextInputState createState() => MyTextInputState();
}

class MyTextInputState extends State<MyTextInput2> {
  String result = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text("Input Text 2"),
            backgroundColor: Colors.deepOrange),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
              TextField(
                  decoration: const InputDecoration(
                      hintText: "Digite aqui e pressione ENTER"),
                  //onChanged is called whenever we add or delete something on Text Field
                  onSubmitted: (String str) {
                    setState(() {
                      result = str;
                    });
                  }),
              //displaying input text
              Text(result)
            ])));
  }
}
