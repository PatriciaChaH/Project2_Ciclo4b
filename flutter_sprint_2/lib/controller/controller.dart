import 'package:get/get.dart';

class controller extends GetxController {
  final _positionPage = 0.obs;

  void changePosition(int x) {
    _positionPage.value = x;
  }

  int get positionPage => _positionPage.value;
}
