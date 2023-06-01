import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_ordering_service/cubit/cart_cubit.dart/cart_cubit.dart';
import 'package:food_ordering_service/widgets/shopping_cart_widgets/widget.dart';

class ShoppingCartPage extends StatelessWidget {
  const ShoppingCartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50), // here the desired height

        child: AppBar(
          title: const Text('FoodApp'),
        ),
      ),
      bottomSheet: context.read<CartCubit>().cartProducts.isNotEmpty
          ? const PayBottomSheet()
          : const SizedBox(width: 0, height: 0),
      body: context.read<CartCubit>().cartProducts.isNotEmpty
          ? BlocBuilder<CartCubit, CartState>(
              builder: (context, state) {
                return state.maybeMap(
                  initial: (initState) => ListView.builder(
                    itemCount: initState.Cartproducts.length,
                    padding: EdgeInsets.zero,
                    itemBuilder: (context, index) => TileCartProductWidget(
                        index: index, product: initState.Cartproducts[index]),
                  ),
                  orElse: () => Container(),
                );
              },
            )
          : const Center(
              child: Text(
              'Ваша корзина пуста',
              style: TextStyle(fontSize: 30),
            )),
    );
  }
}
