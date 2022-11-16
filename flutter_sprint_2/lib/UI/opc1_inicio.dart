import 'package:flutter/material.dart';

class opc1_inicio extends StatefulWidget {
  const opc1_inicio({super.key});

  @override
  State<opc1_inicio> createState() => _opc1_inicioState();
}

class _opc1_inicioState extends State<opc1_inicio> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Image(
            image: NetworkImage(
                "https://cdn4.iconfinder.com/data/icons/e-commerce-and-shopping-3/500/store-building-512.png")),
      ),
    );
  }
}
