import 'package:flutter/material.dart';

class MyTextInput extends StatefulWidget {
  const MyTextInput({super.key});

  @override
  MyTextInputState createState() => MyTextInputState();
}

class MyTextInputState extends State<MyTextInput> {
  final TextEditingController controlador = TextEditingController();

  String result = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text("Input Text 1"),
            backgroundColor: Colors.deepOrange),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
              TextField(
                  decoration: const InputDecoration(
                      hintText:
                          "Digite aqui e pressione enter para acrescentar"),
                  //onChanged is called whenever we add or delete something on Text Field
                  onSubmitted: (String str) {
                    setState(() {
                      result = '$result\n$str';
                    });
                    controlador.text = "";
                  },
                  controller: controlador),

              //displaying input text
              Text(result)
            ])));
  }
}
