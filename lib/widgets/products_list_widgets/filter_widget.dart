import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_ordering_service/cubit/filter_cubit.dart/filter_cubit.dart';

Card filterWidget() {
  return Card(
    elevation: 5,
    child: SizedBox(
      height: 35,
      child: BlocBuilder<FilterCubit, FilterState>(
        builder: (context, state) {
          return state.maybeMap(
            initial: (initState) {
              return PopupMenuButton(
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15.0))),
                onSelected: (value) {
                  context.read<FilterCubit>().updateSelectedItem(value);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const SizedBox(width: 8),
                    Text(
                      initState.selectedItem.toString(),
                      style: const TextStyle(fontSize: 16),
                    ),
                    const SizedBox(width: 6),
                    const FaIcon(
                      FontAwesomeIcons.filter,
                      color: Colors.white,
                      size: 20,
                    ),
                    const SizedBox(width: 6)
                  ],
                ),
                itemBuilder: (context) => [
                  const PopupMenuItem(
                    value: 'Фрукты',
                    child: Text('Фрукты'),
                  ),
                  const PopupMenuItem(
                    value: 'Овощи',
                    child: Text('Овощи'),
                  ),
                  const PopupMenuItem(
                    value: 'Мясо',
                    child: Text('Мясо'),
                  ),
                  const PopupMenuItem(
                    value: 'Все',
                    child: Text('Все'),
                  )
                ],
              );
            },
            orElse: () => Container(),
          );
        },
      ),
    ),
  );
}
