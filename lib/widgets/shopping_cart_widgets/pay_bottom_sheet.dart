import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_ordering_service/cubit/cart_cubit.dart/cart_cubit.dart';

class PayBottomSheet extends StatelessWidget {
  const PayBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 16, right: 16, top: 5),
            child: BlocBuilder<CartCubit, CartState>(
              builder: (context, state) {
                return state.maybeMap(
                  initial: (initState) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Итого:',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          '${state.total} руб.',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                      ],
                    );
                  },
                  orElse: () => Container(),
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: ElevatedButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(width: 5),
                  Text(
                    'Оплатить',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                    textAlign: TextAlign.end,
                  ),
                ],
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(
                    Theme.of(context).colorScheme.onPrimary),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
