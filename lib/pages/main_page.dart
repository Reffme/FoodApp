import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_ordering_service/pages/products_list_page.dart';
import 'package:food_ordering_service/pages/shopping_cart_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    const ShoppingListPage(),
    const ShoppingCartPage()
  ];

  List<BottomNavigationBarItem> get _itemsBottomNavigationBar {
    return const <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        label: 'Лента',
        icon: FaIcon(FontAwesomeIcons.cartShopping),
      ),
      BottomNavigationBarItem(
        label: 'Корзина',
        icon: FaIcon(FontAwesomeIcons.cashRegister),
      ),
    ];
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.white,
        elevation: 1,
        items: _itemsBottomNavigationBar,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
