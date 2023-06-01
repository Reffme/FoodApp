import 'package:flutter/material.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({
    super.key,
    required List<Widget> tabs,
  }) : _tabs = tabs;

  final List<Widget> _tabs;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.grey.shade300,
        ),
        height: 45,
        padding: const EdgeInsets.all(5),
        width: MediaQuery.of(context).size.width / 1.1,
        child: Material(
          color: Colors.grey.shade300,
          child: TabBar(
            overlayColor: const MaterialStatePropertyAll(Colors.transparent),
            dividerColor: Colors.transparent,
            unselectedLabelColor: Colors.grey.shade700,
            labelColor: Theme.of(context).primaryColor,
            physics: const ClampingScrollPhysics(),
            indicatorSize: TabBarIndicatorSize.tab,
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.white,
            ),
            tabs: _tabs,
          ),
        ),
      ),
    );
  }
}
