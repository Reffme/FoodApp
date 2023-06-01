import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_ordering_service/cubit/cart_cubit.dart/cart_cubit.dart';
import 'package:food_ordering_service/model/car%D0%B5_product_model.dart';
import 'package:food_ordering_service/model/product_model.dart';

Future<dynamic> showFullInfo(
    {required BuildContext context, required ProductModel product}) {
  return showDialog(
    context: context,
    builder: (context) => AlertDialog(
      actionsAlignment: MainAxisAlignment.center,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      titlePadding: const EdgeInsets.all(0),
      actionsPadding: const EdgeInsets.only(bottom: 16, left: 8, right: 9),
      content: SizedBox(
        height: MediaQuery.of(context).size.height / 1.2,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                children: [
                  FaIcon(
                    product.image,
                    size: 200,
                    color: product.colorImage,
                  ),
                  Text(
                    product.name,
                    style: const TextStyle(fontSize: 32),
                  ),
                  const Divider(),
                  Row(
                    children: [
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          textAlign: TextAlign.justify,
                          'Категория: ',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          textAlign: TextAlign.justify,
                          product.category,
                        ),
                      ),
                    ],
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      textAlign: TextAlign.justify,
                      'Описание:',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      textAlign: TextAlign.justify,
                      product.description,
                    ),
                  )
                ],
              ),
              Container(
                alignment: Alignment.topRight,
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const FaIcon(
                    FontAwesomeIcons.xmark,
                    color: Colors.red,
                    size: 30,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      actions: [
        ElevatedButton(
          onPressed: () {
            context.read<CartCubit>().addProduct(
                cartProduct: CartProductModel(
                    colorImage: product.colorImage,
                    image: product.image,
                    name: product.name,
                    price: product.price));
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                backgroundColor: Theme.of(context).colorScheme.onSecondary,
                shape: const RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(20))),
                duration: const Duration(milliseconds: 300),
                content: Text(
                  textAlign: TextAlign.center,
                  '${product.name} в корзине!',
                  style: const TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            );
            Navigator.pop(context);
          },
          style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(
                Theme.of(context).colorScheme.onPrimary),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const FaIcon(
                FontAwesomeIcons.cartPlus,
                color: Colors.white,
              ),
              const SizedBox(width: 5),
              Text(
                '${product.price} руб',
                style: const TextStyle(fontSize: 16, color: Colors.white),
                textAlign: TextAlign.end,
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
