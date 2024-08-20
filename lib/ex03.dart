import 'package:flutter/material.dart';

class BotaoDemais extends StatefulWidget {
  const BotaoDemais({super.key});

  @override
  AwesomeButtonState createState() => AwesomeButtonState();
}

class AwesomeButtonState extends State<BotaoDemais> {
  int contador = 0;
  List<String> lista = ["Flutter", "eh", "demais!"];
  String displayString = "";

  void onPressed() {
    setState(() {
      displayString = lista[contador];
      contador = contador < 2 ? contador + 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('algo stateful'),
          backgroundColor: Colors.amber,
        ),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
              Text(
                displayString,
              ),
              const Padding(padding: EdgeInsets.all(15.0)),
              ElevatedButton(
                  //   colors: Colors.red,
                  onPressed: onPressed,
                  child: const Text('Pressione-me'))
            ])));
  }
}
