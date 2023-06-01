import 'package:flutter/material.dart';
import 'package:food_ordering_service/widgets/products_list_widgets/widgets.dart';

class ShoppingListPage extends StatefulWidget {
  const ShoppingListPage({super.key});

  @override
  _ShoppingListPageState createState() => _ShoppingListPageState();
}

class _ShoppingListPageState extends State<ShoppingListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBarShoppingList(),
      body: Column(
        children: <Widget>[
          DefaultTabController(
            length: 2,
            initialIndex: 0,
            child: Column(
              children: <Widget>[
                TabBarWidget(tabs: _tabs),
                const SizedBox(height: 6),
                SizedBox(
                  height:
                      MediaQuery.of(context).size.height - 188, //TODO fix this
                  child: TabBarView(
                    children: <Widget>[
                      ListProductPage(),
                      GridProductsWidget(),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> get _tabs {
    return [
      Tab(
          child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
        child: const Align(
          alignment: Alignment.center,
          child: Text(
            'Список',
            style: TextStyle(fontSize: 16),
          ),
        ),
      )),
      Tab(
        child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
          child: const Align(
            alignment: Alignment.center,
            child: Text(
              'Сетка',
              style: TextStyle(fontSize: 16),
            ),
          ),
        ),
      )
    ];
  }

  PreferredSize _appBarShoppingList() {
    return PreferredSize(
      preferredSize: const Size.fromHeight(50), // here the desired height
      child: AppBar(
        elevation: 0,
        title: const Text(
          'FoodApp',
        ),
        centerTitle: false,
        actions: [filterWidget(), const SizedBox(width: 15)],
      ),
    );
  }
}
