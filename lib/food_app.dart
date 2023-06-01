import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_ordering_service/cubit/cart_cubit.dart/cart_cubit.dart';
import 'package:food_ordering_service/cubit/filter_cubit.dart/filter_cubit.dart';
import 'package:food_ordering_service/pages/shopping_cart_page.dart';
import 'package:food_ordering_service/repositories/filter_repository.dart';

import 'pages/main_page.dart';

class FoodApp extends StatelessWidget {
  const FoodApp({super.key});

  @override
  Widget build(BuildContext context) {
    // final _defaultLightColorScheme =
    //     ColorScheme.fromSwatch(primarySwatch: Colors.blue);

    // final _defaultDarkColorScheme = ColorScheme.fromSwatch(
    //     primarySwatch: Colors.blue, brightness: Brightness.dark);

    // ColorScheme? lightColorScheme;
    // ColorScheme? darkColorScheme;

    return MultiBlocProvider(
      providers: [
        BlocProvider<FilterCubit>(
          create: (context) => FilterCubit(
            FilterRepository(),
          ),
        ),
        BlocProvider<CartCubit>(
          create: (context) => CartCubit(),
        )
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(
          useMaterial3: true,
        ),
        routes: {
          '/': (context) => const MainPage(),
          '/shop_cart': (context) => const ShoppingCartPage(),
        },
      ),
    );
  }
}



// DynamicColorBuilder(
//       builder: (lightDynamic, darkDynamic) {
//         return MaterialApp(
//           title: 'Flutter Demo',
//           theme: ThemeData(
//             colorScheme: lightColorScheme ?? _defaultLightColorScheme,
//             useMaterial3: true,
//           ),
//           darkTheme: ThemeData(
//             colorScheme: darkColorScheme ?? _defaultDarkColorScheme,
//             useMaterial3: true,
//           ),
//           themeMode: ThemeMode.dark,
//           routes: {
//             '/': (context) => const MainPage(),
//             '/shop_cart': (context) => const ShoppingCartPage(),
//           },
//         );
//       },
//     );

// ThemeData(
//         colorScheme: ColorScheme.fromSeed(
//           seedColor: Color.fromARGB(255, 61, 255, 245),
//         ),
//         useMaterial3: true,
//       ),