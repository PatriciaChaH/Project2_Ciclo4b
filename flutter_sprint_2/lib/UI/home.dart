import 'package:flutter/material.dart';
import 'package:flutter_sprint_2/UI/menu.dart';
import 'package:flutter_sprint_2/UI/opc1_inicio.dart';
import 'package:flutter_sprint_2/UI/opc2_comprar.dart';
import 'package:flutter_sprint_2/UI/opc3_productos.dart';
import 'package:flutter_sprint_2/UI/opc4_acercade.dart';
import 'package:flutter_sprint_2/controller/controller.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Sprint 2',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'Shopping'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

List menuoptions = [
  opc1_inicio(),
  opc2_comprar(),
  opc3_productos(),
  opc4_acercade()
];

class _MyHomePageState extends State<MyHomePage> {
  controller Control = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: menu(),
      body: Obx(() => menuoptions[Control.positionPage]),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
