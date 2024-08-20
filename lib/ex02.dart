import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Card Exemplo')),
        body: Container(
            padding: const EdgeInsets.all(20.0),
            child: const Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  MyCard(
                      title: Text("I love Flutter",
                          style: TextStyle(fontSize: 20.0)),
                      icon: Icon(Icons.favorite,
                          size: 40.0, color: Colors.redAccent)),
                  MyCard(
                      title: Text("I love Donuts",
                          style: TextStyle(fontSize: 20.0)),
                      icon: Icon(Icons.donut_large,
                          size: 40.0, color: Colors.brown)),
                  MyCard(
                      title:
                          Text("I see you", style: TextStyle(fontSize: 20.0)),
                      icon: Icon(Icons.visibility,
                          size: 40.0, color: Colors.blue))
                ],
              ),
            )));
  }
}

class MyCard extends StatelessWidget {
  //colocando um construtor
  const MyCard({super.key, required this.title, required this.icon});

  final Widget title;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(bottom: 20.0),
        child: Card(
            child: Container(
                padding: const EdgeInsets.all(15.0),
                child: Column(children: <Widget>[title, icon]))));
  }
}
