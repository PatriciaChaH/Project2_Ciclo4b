import 'package:flutter/material.dart';
import 'package:flutter_sprint_2/controller/controller.dart';
import 'package:get/get.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class opc3_productos extends StatefulWidget {
  const opc3_productos({super.key});

  @override
  State<opc3_productos> createState() => _opc3_productosState();
}

class _opc3_productosState extends State<opc3_productos> {
  controller Control = Get.find();
  @override
  Widget build(BuildContext context) {
    return Obx(() => Container(
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: Control.prod.length,
                  itemBuilder: (BuildContext context, int index) {
                    if (Control.prod[index].amount == 0) {
                      return Text("");
                    } else {
                      return ListTile(
                        leading: Image(
                            width: 50,
                            height: 50,
                            image: NetworkImage(Control.prod[index].image)),
                        title: Text(Control.prod[index].name),
                        subtitle: Text("Precio: " +
                            Control.prod[index].price.toString() +
                            " | " +
                            "Cantidad: " +
                            Control.prod[index].amount.toString()),
                        trailing: Text((Control.prod[index].amount *
                                Control.prod[index].price)
                            .toString()),
                      );
                    }
                  },
                ),
              ),
              Divider(),
              Text(
                "Total de tu carrito: " + Control.calcularTotal().toString(),
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Divider(),
              ElevatedButton.icon(
                  onPressed: () {
                    Alert(
                        context: context,
                        title: "¡¡¡ATENCIÓN!!!",
                        desc: "Pago realizado exitosamente",
                        buttons: [
                          DialogButton(
                              child: Text("Cerrar"),
                              onPressed: () {
                                Control.limpiar();
                                Navigator.pop(context);
                                Control.changePosition(0);
                              })
                        ]).show();
                  },
                  icon: Icon(
                    Icons.paypal,
                    color: Colors.amber.shade400,
                  ),
                  label: Text("Pagar"))
            ],
          ),
        ));
  }
}
