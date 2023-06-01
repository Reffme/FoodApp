import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_ordering_service/model/product_model.dart';

class FilterRepository {
  List<ProductModel> getAllProducts() {
    final List<ProductModel> products = [
      const ProductModel(
        image: FontAwesomeIcons.appleWhole,
        colorImage: Colors.red,
        name: "Яблоко",
        category: "Фрукты",
        price: 80,
        description:
            "Я́блоко — сочный плод яблони, который употребляется в пищу в свежем и запеченном виде, служит сырьём в кулинарии и для приготовления напитков. ",
      ),
      const ProductModel(
        image: FontAwesomeIcons.carrot,
        colorImage: Colors.orange,
        name: "Морковь",
        category: "Овощи",
        price: 65,
        description:
            "Морковь посевная (лат. Daucus carota subsp. sativus) — двулетнее растение, овощная культура, подвид вида морковь дикая. Обычно в быту под словом «морковь» подразумевается широко распространённый корнеплод именно этого растения, который обычно относят к овощам.",
      ),
      const ProductModel(
        image: FontAwesomeIcons.lemon,
        colorImage: Colors.yellow,
        name: "Лимон",
        category: "Фрукты",
        price: 120,
        description:
            "Лимо́н (лат. Cítrus límon) — растение; вид рода Цитрус (Citrus) подтрибы Цитрусовые (Citreae) семейства Рутовые (Rutaceae). Лимоном также называется плод этого растения.",
      ),
      const ProductModel(
        image: FontAwesomeIcons.brain,
        colorImage: Colors.pink,
        name: "Мозг",
        category: "Мясо",
        price: 350,
        description:
            "Мозги — мякотный субпродукт переработки крупного и мелкого рогатого скота и свиней. В пищу идут мозги свиней, белок, лошадей, коров, обезьян, кур и коз. Во многих культурах различные виды мозгов считаются деликатесом.",
      )
    ];
    return products;
  }

  List<ProductModel> getFilteredProducts() {
    final List<ProductModel> products = [];
    return products;
  }

  String getSelectedItem() {
    final String item = "Все";
    return item;
  }
}
