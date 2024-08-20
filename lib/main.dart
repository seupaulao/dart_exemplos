import 'package:dart_exemplos/ex02.dart';
import 'package:dart_exemplos/ex03.dart';
import 'package:dart_exemplos/ex05_1.dart';
import 'package:dart_exemplos/ex05_2.dart';
import 'package:dart_exemplos/temperaturas.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: const HomePage(), routes: <String, WidgetBuilder>{
    "/SegundaPagina": (BuildContext contexto) => const SegundaPagina(),
    "/Temperaturas": (BuildContext contexto) => const Temperaturas(),
    "/Card": (BuildContext contexto) => const CardWidget(),
    "/BotaoDemais": (BuildContext contexto) => const BotaoDemais(),
    "/MT1": (BuildContext contexto) => const MyTextInput(),
    "/MT2": (BuildContext contexto) => const MyTextInput2(),
  }));
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text("Home Page"),
            backgroundColor: const Color.fromARGB(255, 220, 174, 160)),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
              IconButton(
                  icon: const Icon(Icons.favorite, color: Colors.redAccent),
                  iconSize: 70.0,
                  onPressed: () {
                    Navigator.of(context).pushNamed("/SegundaPagina");
                  }),
              IconButton(
                  icon: const Icon(Icons.temple_buddhist,
                      color: Color.fromARGB(255, 89, 219, 139)),
                  iconSize: 70.0,
                  onPressed: () {
                    Navigator.of(context).pushNamed("/Temperaturas");
                  }),
              IconButton(
                  icon: const Icon(Icons.account_balance,
                      color: Color.fromARGB(255, 183, 190, 49)),
                  iconSize: 70.0,
                  onPressed: () {
                    Navigator.of(context).pushNamed("/Card");
                  }),
              IconButton(
                  icon: const Icon(Icons.auto_awesome_motion,
                      color: Color.fromARGB(255, 110, 100, 215)),
                  iconSize: 70.0,
                  onPressed: () {
                    Navigator.of(context).pushNamed("/BotaoDemais");
                  }),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      icon: const Icon(Icons.auto_awesome,
                          color: Color.fromARGB(255, 151, 67, 105)),
                      iconSize: 70.0,
                      onPressed: () {
                        Navigator.of(context).pushNamed("/MT1");
                      }),
                  IconButton(
                      icon: const Icon(Icons.auto_awesome,
                          color: Color.fromARGB(255, 72, 160, 109)),
                      iconSize: 70.0,
                      onPressed: () {
                        Navigator.of(context).pushNamed("/MT2");
                      }),
                ],
              ),
              const Text("Estou em Casa - Home sweet home")
            ])));
  }
}

class SegundaPagina extends StatelessWidget {
  const SegundaPagina({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text("Second Page"),
            backgroundColor: Colors.deepOrange),
        body: const Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
              IconButton(
                icon: Icon(Icons.home, color: Colors.blue),
                iconSize: 70.0,
                onPressed: null,
              ),
              Text("Second Page")
            ])));
  }
}
