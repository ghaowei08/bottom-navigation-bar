import 'package:alpaca_trading/provider/navigator_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NavigatorScreen extends StatefulWidget {
  NavigatorScreen({Key? key}) : super(key: key);

  @override
  State<NavigatorScreen> createState() => _NavigatorScreenState();
}

class _NavigatorScreenState extends State<NavigatorScreen> {
  void _onItemTapped(int index) {
    setState(() {
      context.read<NavigatorProvider>().updateIndex(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: context.watch<NavigatorProvider>().currentScreen,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onItemTapped,
        currentIndex: context.watch<NavigatorProvider>().currentIndex,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assessment),
            label: "Order",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.apps_rounded),
            label: "Order",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.announcement_rounded),
            label: "Order",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Person",
          ),
        ],
      ),
    );
  }
}
