import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_ordering_service/cubit/cart_cubit.dart/cart_cubit.dart';
import 'package:food_ordering_service/cubit/filter_cubit.dart/filter_cubit.dart';
import 'package:food_ordering_service/model/car%D0%B5_product_model.dart';
import 'package:food_ordering_service/model/product_model.dart';
import 'package:food_ordering_service/widgets/show_full_info_widget.dart';

class GridProductsWidget extends StatelessWidget {
  const GridProductsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FilterCubit, FilterState>(
      builder: (context, state) {
        return state.maybeMap(
          initial: (initState) {
            return GridView.builder(
              itemCount: initState.filteredProducts.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisExtent: 250),
              itemBuilder: (context, index) {
                return _CardGridWidget(
                    product: initState.filteredProducts[index]);
              },
            );
          },
          orElse: () => Container(),
        );
      },
    );
  }
}

class _CardGridWidget extends StatelessWidget {
  const _CardGridWidget({
    super.key,
    required this.product,
  });

  final ProductModel product;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => showFullInfo(context: context, product: product),
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  FaIcon(
                    product.image,
                    size: 100,
                    color: product.colorImage,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    product.name,
                    style: const TextStyle(fontSize: 20),
                  ),
                  Text(
                    'Категория: ${product.category}',
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: ElevatedButton(
                onPressed: () {
                  context.read<CartCubit>().addProduct(
                      cartProduct: CartProductModel(
                          colorImage: product.colorImage,
                          image: product.image,
                          name: product.name,
                          price: product.price));
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      backgroundColor:
                          Theme.of(context).colorScheme.onSecondary,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(20),
                        ),
                      ),
                      duration: const Duration(milliseconds: 300),
                      content: Text(
                        textAlign: TextAlign.center,
                        '${product.name} в корзине!',
                        style:
                            const TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  );
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(
                      Theme.of(context).colorScheme.onPrimary),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
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
            ),
            const SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
    );
  }
}
