import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Home(title: '',),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key, required this.title});


  final String title;

  @override
  State<Home> createState() => _HomePageState();
}

class _HomePageState extends State<Home> {
  TextEditingController pesoController = new TextEditingController();
  TextEditingController alturaController = new TextEditingController();
  String _textInfo = "Informe seus dados";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(


          title: Text("Calculadora IMC"),
          centerTitle: true,
          backgroundColor: Colors.purpleAccent,
          actions: <Widget>[
            IconButton(onPressed: () {}, icon: Icon(Icons.refresh))
          ]

      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(10, 0, 20, 10),

        child: Column(

          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Icon(
                Icons.person_pin, size: 100.0, color: Colors.purpleAccent),

            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: "Peso (Kg)",
                  labelStyle: TextStyle(color: Colors.purpleAccent)
              ),
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25.0),
              controller: pesoController,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: "Altura (cm)",
                  labelStyle: TextStyle(color: Colors.purpleAccent)
              ),
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25.0),
              controller: alturaController,
            ),
            Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: SizedBox(
                  height: 50.0,
                  child: ElevatedButton(
                      onPressed: () {},
                      child: const Text("Calcular"),


                  ),
                )
            ),
            Text(
              _textInfo,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.purple,
                  fontSize: 25.0
              ),
            ),
          ],
        ),
      ),
    );
  }
}
