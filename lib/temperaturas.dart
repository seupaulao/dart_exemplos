import 'package:flutter/material.dart';

class Temperaturas extends StatefulWidget {
  const Temperaturas({super.key});

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<Temperaturas> {
  int valor = 25;
  int kelvin = 0;
  double fahr = 0;
  String exibido = "";

  void onDiminuir() {
    setState(() {
      valor = valor - 1;
      kelvin = valor + 273;
      fahr = 9 * (valor / 5) + 32;
      exibido = "$valor graus celsius, $kelvin kelvin $fahr farenheight";
    });
  }

  void onAumentar() {
    setState(() {
      valor = valor + 1;
      kelvin = valor + 273;
      fahr = 9 * (valor / 5) + 32;
      exibido = "$valor graus celsius, $kelvin kelvin $fahr farenheight";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Temperaturas'),
        backgroundColor: Colors.amber,
      ),
      body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const Text(
          "Temperaturas",
        ),
        Text(
          exibido,
        ),
        const Padding(padding: EdgeInsets.all(15.0)),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: onDiminuir, child: const Text('Diminuir')),
            const Padding(padding: EdgeInsets.all(5.0)),
            ElevatedButton(
                onPressed: onAumentar, child: const Text('Aumentar')),
          ],
        )
      ])),
    );
  }
}
