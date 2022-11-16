import 'package:flutter/material.dart';
import 'package:flutter_sprint_2/UI/home.dart';
import 'package:flutter_sprint_2/controller/controller.dart';
import 'package:get/get.dart';

void main() {
  Get.put(controller());
  runApp(const MyApp());
}
