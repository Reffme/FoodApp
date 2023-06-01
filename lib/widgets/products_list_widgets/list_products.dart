import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_ordering_service/cubit/cart_cubit.dart/cart_cubit.dart';
import 'package:food_ordering_service/cubit/filter_cubit.dart/filter_cubit.dart';
import 'package:food_ordering_service/model/car%D0%B5_product_model.dart';
import 'package:food_ordering_service/model/product_model.dart';
import 'package:food_ordering_service/widgets/show_full_info_widget.dart';

class ListProductPage extends StatefulWidget {
  const ListProductPage({super.key});

  @override
  State<ListProductPage> createState() => _ListProductPageState();
}

class _ListProductPageState extends State<ListProductPage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FilterCubit, FilterState>(
      builder: (context, state) {
        return state.maybeMap(
          initial: (initState) {
            return ListView.builder(
              itemCount: initState.filteredProducts.length,
              itemBuilder: (context, index) {
                return _productTile(product: initState.filteredProducts[index]);
              },
            );
          },
          orElse: () => Container(),
        );
      },
    );
  }
}

class _productTile extends StatelessWidget {
  _productTile({
    super.key,
    required this.product,
  });
  final ProductModel product;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () => showFullInfo(context: context, product: product),
        leading: FaIcon(
          product.image,
          color: product.colorImage,
          size: 40,
        ),
        titleAlignment: ListTileTitleAlignment.center,
        title: Text(product.name),
        subtitle:
            Text("Категория: ${product.category}\nЦена: ${product.price} руб."),
        trailing: IconButton(
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
                duration: Duration(milliseconds: 300),
                content: Text(
                  textAlign: TextAlign.center,
                  '${product.name} в корзине!',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            );
          },
          icon: const FaIcon(
            FontAwesomeIcons.cartPlus,
            color: Colors.white,
            size: 26,
          ),
        ),
      ),
    );
  }
}
