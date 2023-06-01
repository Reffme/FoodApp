import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_ordering_service/cubit/cart_cubit.dart/cart_cubit.dart';
import 'package:food_ordering_service/model/car%D0%B5_product_model.dart';

class TileCartProductWidget extends StatefulWidget {
  const TileCartProductWidget({
    super.key,
    required this.index,
    required this.product,
  });
  final int index;
  final CartProductModel product;

  @override
  State<TileCartProductWidget> createState() => _TileCartProductWidgetState();
}

class _TileCartProductWidgetState extends State<TileCartProductWidget> {
  @override
  Widget build(BuildContext context) {
    return Dismissible(
      background: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: _DismissbleActionCardWidget(),
      ),
      direction: DismissDirection.startToEnd,
      onDismissed: (direction) {
        context.read<CartCubit>().deleteProduct(index: widget.index);
      },
      key: UniqueKey(),
      child: Card(
        key: UniqueKey(),
        child: ListTile(
          leading: FaIcon(
            widget.product.image,
            color: widget.product.colorImage,
            size: 40,
          ),
          title: Text(widget.product.name),
          subtitle: Text('Цена: ${widget.product.price} руб'),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Card(
                color: Theme.of(context).colorScheme.onPrimary,
                child: SizedBox(
                  height: 40,
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          context
                              .read<CartCubit>()
                              .decrementTotalSum(index: widget.index);
                        },
                        icon: const FaIcon(FontAwesomeIcons.circleMinus),
                      ),
                      Text(
                        '${widget.product.count}',
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                      IconButton(
                        onPressed: () {
                          context
                              .read<CartCubit>()
                              .incrementTotalSum(index: widget.index);
                        },
                        icon: const FaIcon(FontAwesomeIcons.circlePlus),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _DismissbleActionCardWidget extends StatelessWidget {
  const _DismissbleActionCardWidget({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return const Card(
      color: Colors.red,
      child: Padding(
        padding: EdgeInsets.only(left: 10),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Icon(
            Icons.delete,
            size: 45,
          ),
        ),
      ),
    );
  }
}
