import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/controller.dart';

class opc2_comprar extends StatefulWidget {
  const opc2_comprar({super.key});

  @override
  State<opc2_comprar> createState() => _opc2_comprarState();
}

class _opc2_comprarState extends State<opc2_comprar> {
  controller Control = Get.find();

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Obx(
      () => ListView.builder(
        itemCount: Control.prod.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
              leading: Image(
                  width: 50,
                  height: 50,
                  image: NetworkImage(Control.prod[index].image)),
              title: Text(Control.prod[index].name),
              subtitle: Text(Control.prod[index].price.toString() +
                  " | " +
                  "Cantidad " +
                  Control.prod[index].amount.toString()),
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                      flex: 1,
                      child: IconButton(
                          onPressed: () {
                            int newAmount = Control.prod[index].amount + 1;
                            Control.changeAmount(index, newAmount);
                            Control.prod.refresh();
                          },
                          icon: const Icon(Icons.add_circle_outline))),
                  Expanded(
                      flex: 1,
                      child: IconButton(
                        onPressed: () {
                          int newAmount = Control.prod[index].amount - 1;
                          if (newAmount < 0) {
                            newAmount = 0;
                          }
                          Control.changeAmount(index, newAmount);
                          Control.prod.refresh();
                        },
                        icon: const Icon(Icons.remove_circle_outline),
                      )),
                ],
              ));
        },
      ),
    ));
  }
}
