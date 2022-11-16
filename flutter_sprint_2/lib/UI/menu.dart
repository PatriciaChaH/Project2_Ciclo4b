import 'package:flutter/material.dart';
import 'package:flutter_sprint_2/controller/controller.dart';
import 'package:get/get.dart';

class menu extends StatefulWidget {
  const menu({super.key});

  @override
  State<menu> createState() => _menuState();
}

class _menuState extends State<menu> {
  controller Control = Get.find();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.green.shade400),
              child: UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://cdn0.iconfinder.com/data/icons/user-pictures/100/matureman1-512.png"),
                ),
                currentAccountPictureSize: const Size.square(55),
                accountName: Text("Tripulante"),
                accountEmail: Text("tripulante@uninorte.edu.co"),
                decoration: BoxDecoration(color: Colors.green.shade300),
              ),
            ),
            Divider(),
            Expanded(
                child: ListView(children: [
              ListTile(
                leading: Icon(Icons.home),
                title: Text("Inicio"),
                trailing: Icon(Icons.keyboard_arrow_right_sharp),
                onTap: () {
                  Navigator.pop(context);
                  Control.changePosition(0);
                },
              ),
              ListTile(
                leading: Icon(Icons.shopping_cart_checkout_outlined),
                title: Text("Comprar"),
                trailing: Icon(Icons.keyboard_arrow_right_sharp),
                onTap: () {
                  Navigator.pop(context);
                  Control.changePosition(1);
                },
              ),
              ListTile(
                leading: Icon(Icons.shopify_sharp),
                title: Text("Productos"),
                trailing: Icon(Icons.keyboard_arrow_right_sharp),
                onTap: () {
                  Navigator.pop(context);
                  Control.changePosition(2);
                },
              ),
              ListTile(
                leading: Icon(Icons.person_pin_circle),
                title: Text("Acerca de:"),
                trailing: Icon(Icons.keyboard_arrow_right_sharp),
                onTap: () {
                  Navigator.pop(context);
                  Control.changePosition(3);
                },
              ),
            ]))
          ],
        ),
      ),
    );
  }
}
