import 'package:flutter_sprint_2/clases/productslist.dart';
import 'package:get/get.dart';

class controller extends GetxController {
  final _positionPage = 0.obs;
  final prod = <products>[].obs;

  @override
  void onInit() {
    prod.add(products(
        1,
        "MAZDA Camioneta",
        "https://ae01.alicdn.com/kf/H683b33c55f80481ea6fba485e34e740bx.jpg",
        0,
        180000));
    prod.add(products(
        2,
        "NISSAN Camioneta Kicks",
        "https://http2.mlstatic.com/D_NQ_NP_990694-MCO45360973907_032021-O.jpg",
        0,
        132000));
    prod.add(products(3, "FORD Explorer Camionetas",
        "https://i.ytimg.com/vi/_3zJKK6Yj5g/maxresdefault.jpg", 0, 198500));
    prod.add(products(
        4,
        "VOLKSWAGEN Combi",
        "https://acnews.blob.core.windows.net/imgnews/medium/NAZ_f74e0adc845a4960b030f79e21b5d6ea.jpg",
        0,
        95000));
    prod.add(products(
        5,
        "TOYOTA Camioneta Yaris ",
        "https://cf.shopee.com.my/file/6ef3b9011199b4420900a1299cd4398c",
        0,
        45000));
    prod.add(products(
        6,
        "MERCEDEZ-BENZ Camioneta A-Class",
        "https://live.staticflickr.com/65535/51747186809_75996e3a77_b.jpg",
        0,
        72000));
    prod.add(products(
        7,
        "CHEVROLET Camaro Convertible",
        "https://1.bp.blogspot.com/-5wp8UVN79ig/YCCuefZobDI/AAAAAAABR-o/cFhdRBaU7po-UnLnRlhdQrXylDUZZfgXQCLcBGAsYHQ/s1658/Cc03.jpg",
        0,
        45000));
    prod.add(products(
        8,
        "PORSCHE Camioneta Cayenne Turbo ",
        "https://http2.mlstatic.com/D_NQ_NP_672765-MLC46684756969_072021-O.jpg",
        0,
        80000));
    prod.add(products(
        9,
        "BMW Camioneta X5 ",
        "https://http2.mlstatic.com/D_NQ_NP_620613-MCO47397938679_092021-O.jpg",
        0,
        64900));
    prod.add(products(
        10,
        "VOLVO Camioneta XC90 ",
        "https://i.pinimg.com/736x/51/89/9b/51899b5c5606431fc43221d81f7a07d0.jpg",
        0,
        75000));

    // TODO: implement onInit
    super.onInit();
  }

  void changePosition(int x) {
    _positionPage.value = x;
  }

  int get positionPage => _positionPage.value;

  void changeAmount(int position, int valor) {
    prod[position].amount = valor;
  }

  int calcularTotal() {
    int total = 0;
    for (int i = 0; i < prod.length; i++) {
      total = total + prod[i].amount * prod[i].price;
    }
    return total;
  }

  void limpiar() {
    for (int i = 0; i < prod.length; i++) {
      prod[i].amount = 0;
    }

    calcularTotal();
  }
}
