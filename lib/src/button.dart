// Creado por: Mateo Maldonado Tolentino <200906>
// Asignatura: Desarrollo Móvil Integral
// Grado: 10
// Grupo: A
// Docente: MTI Marco Antonio Ramirez Hernandez

import 'package:flutter/material.dart';
//import 'dart:ffi';

class MyButton extends StatefulWidget {
  const MyButton({super.key});
  @override
  _MyButtonState createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  String textButton = "Pulsame :v";
  int index = 0;
  List<String> collections = ["Eat me","Drink me","Kiss me"];

  void onPressedButton() {
    setState(() {
      textButton = collections[index];
      index = index < collections.length -1 ? index + 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateful Widget - 200906"),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                  textButton,
                  style: TextStyle(
                      fontSize: 40.0
                  )
              ),
              ElevatedButton(
                child: Text(
                  "Press me",
                  style: TextStyle(color: Colors.black38),
                ),
                onPressed: onPressedButton,
              )
            ],
          ),
        ),
      ),
    );
  }
}