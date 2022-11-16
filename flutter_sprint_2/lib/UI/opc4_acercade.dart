import 'package:flutter/material.dart';

class opc4_acercade extends StatefulWidget {
  const opc4_acercade({super.key});

  @override
  State<opc4_acercade> createState() => _opc4_acercadeState();
}

class _opc4_acercadeState extends State<opc4_acercade> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView(
      children: [
        ListTile(
          leading: Icon(Icons.developer_mode),
          title: Text(
            "Desarrolladores",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          leading: Icon(Icons.person_pin_circle_outlined),
          title: Text("Harold Villacob"),
        ),
        ListTile(
          leading: Icon(Icons.person_pin_circle_outlined),
          title: Text("Patricia Chávez"),
        ),
        ListTile(
          leading: Icon(Icons.person_pin_circle_outlined),
          title: Text("John Jairo Rodríguez"),
        ),
        ListTile(
          leading: Icon(Icons.person_pin_circle_outlined),
          title: Text("Andrés Tenorio"),
        ),
        ListTile(
          title: Text(
            "UniNorte - Misión TIC 2022",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ],
    ));
  }
}
